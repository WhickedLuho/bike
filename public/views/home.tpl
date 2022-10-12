<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="text-center">

                <img src="https://picsum.photos/1000/400" class="img-fluid" alt="header-image">
            </div>
            
        </div>
        <div class="col-3 mt-5">
            <div class="row">
                <div class="list-group list-group-flush border-bottom scrollarea">
                    {if !empty($categories)}
                        {foreach $categories as $key => $category}
                            {if !empty($category_id) && $category_id == $category['id']}
                                <a href="./?category={$category.id}" class="list-group-item list-group-item-action active py-3 lh-sm" aria-current="true">

                            {else}
                            <a href="./?category={$category.id}" class="list-group-item list-group-item-action py-3 lh-sm">
                                
                            {/if}
                                <div class="d-flex w-100 align-items-center justify-content-between">
                                    <strong class="mb-1">{$category.name}</strong>
                                    <!-- <small>Wed</small> -->
                                </div>
                                <div class="col-10 mb-1 small">{$category.description}</div>
                            </a>
                        {/foreach}
                    {/if}
                </div>
            </div>
        </div>
        <div class="col-9 mt-5">
            Suspendisse vel risus luctus, feugiat ante ac, consequat mi. Nullam accumsan odio sit amet enim cursus consectetur. Vestibulum sed nibh scelerisque, commodo ipsum at, consectetur purus. Vestibulum erat purus, fermentum eu aliquet vitae, elementum sit amet dui. Vestibulum at tristique nisl, vitae egestas ligula. Ut eu nisl vel sapien dignissim volutpat non a nibh. Ut sodales ipsum at ex tristique posuere. Donec nec mauris quam. Nulla finibus dui in dapibus porta. Fusce semper arcu tortor, et condimentum ex dignissim vel. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque in viverra augue. Nullam sit amet lacus sit amet enim varius congue mollis vel turpis.

            <div class="card-group">
                <div class="card">
                    <img src="https://picsum.photos/250/250" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
                <div class="card">
                    <img src="https://picsum.photos/250/250" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    </div>
                    <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
                <div class="card">
                    <img src="https://picsum.photos/250/250" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                    </div>
                    <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
