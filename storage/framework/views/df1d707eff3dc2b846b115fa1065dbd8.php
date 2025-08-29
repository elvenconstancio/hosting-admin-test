
<?php $__env->startSection('content'); ?>
    <div class="container-fluid">
        <div class="row mb-3">
            <div class="col-12 col-md-4 mb-2" data-aos="fade-up">
                <div class="card text-white text-bg-primary">
                    <div class="card-body">
                        <h6>Users</h6>
                        <h3><?php echo e($usersCount); ?></h3>
                        <a href="<?php echo e(route('admin.users.index')); ?>" class="btn btn-outline-light btn-sm mt-4">
                            Manage Users <i class="bi bi-arrow-right-circle"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 mb-2" data-aos="fade-up" data-aos-delay="100">
                <div class="card text-white text-bg-secondary">
                    <div class="card-body">
                        <h6>Services</h6>
                        <h3><?php echo e($servicesCount); ?></h3>
                        <a href="<?php echo e(route('admin.services.index')); ?>" class="btn btn-outline-light btn-sm mt-4">
                            Manage Services <i class="bi bi-arrow-right-circle"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 mb-2" data-aos="fade-up" data-aos-delay="200">
                <div class="card text-white text-bg-success">
                    <div class="card-body">
                        <h6>Unpaid Bills</h6>
                        <h3><?php echo e($unpaidBills); ?></h3>
                        <a href="<?php echo e(route('admin.billings.index')); ?>" class="btn btn-outline-light btn-sm mt-4">
                            Manage Billings <i class="bi bi-arrow-right-circle"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <hr class="my-4">

        <div class="row">
            <div class="col-12 mb-3" data-aos="fade-up" data-aos-delay="300">
                <div class="card">
                    <div class="card-header">Latest Services</div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover mb-0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Domain</th>
                                        <th>Owner</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__empty_1 = true; $__currentLoopData = $latestServices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $service): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                        <tr>
                                            <td><?php echo e($service->id); ?></td>
                                            <td><?php echo e($service->name); ?></td>
                                            <td><?php echo e($service->domain); ?></td>
                                            <td><?php echo e(optional($service->user)->name); ?></td>
                                            <td><?php echo e(ucfirst($service->status)); ?></td>
                                            <td>Rp <?php echo e(number_format($service->price, 0, ',', '.')); ?></td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                        <tr>
                                            <td colspan="6">Tidak ada data</td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\laragon\www\hosting-admin-test\resources\views/admin/dashboard.blade.php ENDPATH**/ ?>