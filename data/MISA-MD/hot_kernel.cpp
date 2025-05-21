__global__ void calDf(_cuAtomElement* d_atoms, long start_id, long end_id, _domain d_domain) {
    const unsigned int thread_id = hipBlockIdx_x * hipBlockDim_x + hipThreadIdx_x;
    const long atoms_num = (end_id - start_id) * d_domain.box_size_x * d_domain.box_size_y;
    const unsigned int threads_size = hipGridDim_x * hipBlockDim_x;

    for (int atom_id = thread_id; atom_id < atoms_num; atom_id += threads_size) {
        const int z = atom_id / (d_domain.box_size_x * d_domain.box_size_y);
        const int y = (atom_id % (d_domain.box_size_x * d_domain.box_size_y)) / d_domain.box_size_x;
        const int x = (atom_id % (d_domain.box_size_x * d_domain.box_size_y)) % d_domain.box_size_x;
        const long index = x + y * d_domain.box_size_x + z * d_domain.box_size_x * d_domain.box_size_y;

        const int type0 = d_atoms[index].type;
        const double rho = d_atoms[index].rho;

        if (type0 < 0) {
            continue;
        }
        d_atoms[index].df = hipDEmbedEnergy(type0, rho);
    }
}