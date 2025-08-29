
<?php $__env->startSection('content'); ?>
    <div class="container-fluid">
        <div class="card" data-aos="fade-up">
            <div class="card-header">Billings</div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-striped table-hover mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Service</th>
                                <th>Amount</th>
                                <th>Due Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $billings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $b): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($b->id); ?></td>
                                    <td><?php echo e(optional($b->service)->name); ?></td>
                                    <td>Rp <?php echo e(number_format($b->amount, 0, ',', '.')); ?></td>
                                    <td><?php echo e($b->due_date); ?></td>
                                    <td><?php echo e(ucfirst($b->status)); ?></td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer"><?php echo e($billings->links()); ?></div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\laragon\www\hosting-admin-test\resources\views/admin/billings/index.blade.php ENDPATH**/ ?>