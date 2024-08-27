<?php $__env->startSection('content'); ?>
    <!--  Header BreadCrumb -->
    <div class="content-header">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo e(route('dashboard')); ?>"><i class="material-icons">home</i>Home</a></li>
            
            <li class="breadcrumb-item active" aria-current="page">Edit post : <?php echo e($post->title); ?> </li>
            </ol>
        </nav>
        <div class="create-item">
            <a href="/dashboard/posts" class="theme-primary-btn btn btn-primary"><i class="material-icons">arrow_back</i>&nbsp;Back to posts</a>
            
            
        </div>
    </div>
    <!--  Header BreadCrumb --> 

<div class="card bg-white">
    <div class="card-body mt-5 mb-5">

        <form action="<?php echo e(route('adminPostEdit', [$post->id])); ?>" method="POST" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>

            <div class="form-group row">
                <div class="col-md-2">Title</div>
                <div class="col-md-4">
                    <input id="name" type="text"  value="<?php echo e($post->title); ?>" class="form-control<?php echo e($errors->has('title') ? ' is-invalid' : ''); ?>" name="title" value=""  autofocus="">
                    <?php if($errors->has('title')): ?>
                    <span class="invalid-feedback" role="alert">
                        <strong><?php echo e($errors->first('title')); ?></strong>
                    </span>
                     <?php endif; ?>


                 </div>
            </div>
            <div class="form-group row">
                <div class="col-md-2">
                    <label for="category">Category:</label>
                </div>
                <div class="col-md-4">
                    <select name="category_id" id="category_id" class="form-control">
                        <?php $__currentLoopData = App\Models\Category::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($cat->id); ?>" <?php echo e($cat->id==$post->category_id ? 'selected':''); ?>><?php echo e($cat->name); ?></option>
                            
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>

                 </div>
            </div>

            <div class="form-group row">
                <div class="col-md-2">Description</div>
                <div class="col-md-10">

                    <textarea name="description" id="editor" class="<?php echo e($errors->has('description') ? ' is-invalid' : ''); ?>"><?php echo e($post->description); ?></textarea>
                    <?php if($errors->has('description')): ?>
                        <div style="color:red">
                            <p class="mb-0"><?php echo e($errors->first('description')); ?></p>
                        </div>
                    <?php endif; ?>
                 </div>
            </div>
            <div class="form-group row">
                <div class="col-md-2">
                    <label for="file-input-logo">Upload post Thumbnail:</label>
                </div>
                <div class="col-md-4">
                    <div class="set_thumb">

                        <div id='settings-logo'>
                          <img id="preview-thumb" align='middle'src="<?php echo e(url('storage/'.$post->post_thumbnail)); ?>" alt="your image" title=''/>
                          
                        </div>
                            <div class="fileUploadInput">
                                <input type="file" name="post_thumbnail" id="file-input-logo"/>
                                <button class="input-file-btn"><i class="material-icons"> cloud_upload </i></button>
                            </div>
                      </div>
                      <?php if($errors->has('post_thumbnail')): ?>
                            <div style="color:red">
                                <p class="mb-0"><?php echo e($errors->first('post_thumbnail')); ?></p>
                            </div>
                        <?php endif; ?>
                 </div>
            </div>

            <div class="form-group row">
                <div class="col-md-2">
                    <label for="status">Status:</label>
                </div>
                <div class="col-md-4">
                    <select name="status" id="status" class="form-control">
                        <option value="1"<?php echo e($post->status=='1' ? 'selected':''); ?>>Live</option>
                        <option value="0"<?php echo e($post->status=='0' ? 'selected':''); ?>>Draft</option>
                    </select>
                    <?php if($errors->has('status')): ?>
                        <div style="color:red">
                            <p class="mb-0"><?php echo e($errors->first('status')); ?></p>
                        </div>
                    <?php endif; ?>
                

                 </div>
            </div>




            <div class="form-group pt-2 row">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <button class="theme-primary-btn btn btn-success" type="submit">Update post</button>
                   
                 </div>
            </div>

        </form>
  
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('../admin/layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\user\Downloads\JobFinder-Job-Portal-Laravel-Vue-Script-main\JobFinder-Job-Portal-Laravel-Vue-Script-main\resources\views/admin/posts/edit.blade.php ENDPATH**/ ?>