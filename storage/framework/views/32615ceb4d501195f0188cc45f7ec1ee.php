
    <?php echo $__env->make('frontend/partials.head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('frontend/partials.nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  
    <?php echo $__env->make('frontend/partials.hero', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('frontend/partials.category', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    



    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-5 mb-md-0" data-aos="fade-up" data-aos-delay="100">
            <h2 class="mb-5 h3">Recent Jobs</h2>
            <div class="rounded border jobs-wrap">

          
              <?php $__currentLoopData = $jobs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $job): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            

              <a href="<?php echo e(route('job.show', [$job->id, $job->slug])); ?>" class="job-item d-block d-md-flex align-items-center  border-bottom  
                
                <?php if($job->type =='fulltime'): ?>         
                fulltime
                <?php elseif($job->type =='freelance'): ?> 
                freelance  
                <?php elseif($job->type =='partime'): ?>   
                partime  
                <?php elseif($job->type =='remote'): ?>   
                remote
                <?php endif; ?>

                ">
                <?php if($job->company->logo ?? ''): ?>
                <div class="company-logo blank-logo text-center text-md-left pl-3">
                  <img src="<?php echo e(asset('/uploads/logo')); ?>/<?php echo e($job->company->logo  ?? ''); ?>" alt="Image" class="img-fluid mx-auto">
                </div>
                <?php endif; ?>
                <div class="job-details h-100">
                  <div class="p-3 align-self-center">
                    <h3><?php echo e($job->title); ?></h3>
                    <div class="d-block d-lg-flex">
                      <div class="mr-3"><span class="icon-suitcase mr-1"></span> <?php echo e(Str::limit($job->position, 20)); ?></div>
                      <div class="mr-3"><span class="icon-room mr-1"></span> <?php echo e(Str::limit($job->address, 20)); ?></div>
                      <div><span class="icon-money mr-1"></span> GH₵<?php echo e($job->salary); ?></div>
                      
                    </div>
                  </div>
                </div>
                <div class="job-category align-self-center">
                  <div class="p-3">
                    <span class=" p-2 rounded border 

                    <?php if($job->type =='fulltime'): ?>         
                    text-info  border-info
                    <?php elseif($job->type =='freelance'): ?> 
                    text-warning   border-warning
                    <?php elseif($job->type =='partime'): ?>   
                    text-danger   border-danger
                    
                    <?php elseif($job->type =='remote'): ?>   
                    text-dark   border-dark
                    <?php endif; ?>
                    
                    "><?php echo e(Str::ucfirst($job->type)); ?></span>
                  </div>
                </div>  
              </a>


              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>




            </div>

            <div class="col-md-12 text-center mt-5">
              <a href="<?php echo e(route('alljobs')); ?>" class="btn btn-primary rounded py-3 px-5"><span class="icon-plus-circle"></span> Show More Jobs</a>
            </div>
          </div>
    
        </div>
      </div>
    </div>

    <?php echo $__env->make('frontend/partials.testimonial', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


    <div class="site-blocks-cover overlay inner-page" style="background-image: url('external/images/hero_1.jpg');" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6 text-center" data-aos="fade">
            <h1 class="h3 mb-0">Your Dream Job</h1>
            <p class="h3 text-white mb-5">Is Waiting For You</p>
            <p><a href="/register" class="btn btn-outline-warning py-3 px-4">Job seeker</a> <a href="<?php echo e(route('employer.register')); ?>" class="btn btn-warning py-3 px-4">For Companies </a></p>
            
          </div>
        </div>
      </div>
    </div>

    

    <div class="site-section site-block-feature bg-light">
      <div class="container">
        
        <div class="text-center mb-5 section-heading">
          <h2>Why Choose Us</h2>
        </div>

        <div class="d-block d-md-flex border-bottom">
          <div class="text-center p-4 item border-right" data-aos="fade">
            <span class="flaticon-worker display-3 mb-3 d-block text-primary"></span>
            <h2 class="h4">More Jobs Every Day</h2>
            <p>This can reflect positive economic growth, business expansion, or sector-specific developments leading to the creation of new employment opportunities.</p>
            <p><a href="#">Read More <span class="icon-arrow-right small"></span></a></p>
          </div>
          <div class="text-center p-4 item" data-aos="fade">
            <span class="flaticon-wrench display-3 mb-3 d-block text-primary"></span>
            <h2 class="h4">Creative Jobs</h2>
            <p>These roles are often found in industries such as design, media, entertainment, and technology, where imagination and originality are key.</p>
            <p><a href="#">Read More <span class="icon-arrow-right small"></span></a></p>
          </div>
        </div>
        <div class="d-block d-md-flex">
          <div class="text-center p-4 item border-right" data-aos="fade">
            <span class="flaticon-stethoscope display-3 mb-3 d-block text-primary"></span>
            <h2 class="h4">Healthcare</h2>
            <p>This sector includes medical care, preventive services, mental health support, and public health initiatives.</p>
            <p><a href="#">Read More <span class="icon-arrow-right small"></span></a></p>
          </div>
          <div class="text-center p-4 item" data-aos="fade">
            <span class="flaticon-calculator display-3 mb-3 d-block text-primary"></span>
            <h2 class="h4">Finance &amp; Accounting</h2>
            <p>These fields are responsible for managing, analyzing, and reporting financial information.</p>
            <p><a href="#">Read More <span class="icon-arrow-right small"></span></a></p>
          </div>
        </div>
      </div>
    </div>

    

    <?php echo $__env->make('frontend/partials.blog', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>


    <?php echo $__env->make('frontend/partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php /**PATH C:\Users\user\Downloads\JobFinder-Job-Portal-Laravel-Vue-Script-main\JobFinder-Job-Portal-Laravel-Vue-Script-main\resources\views/welcome.blade.php ENDPATH**/ ?>