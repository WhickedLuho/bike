{* <div class="container"> *}
    <div class="row">
        <div class="col-12">
            <div class="text-center">

                <img src="https://picsum.photos/1400/600" class="img-fluid" alt="header-image">
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
            <div class="row mb-5">
                <p class="card-text">
                Suspendisse vel risus luctus, feugiat ante ac, consequat mi. Nullam accumsan odio sit amet enim cursus
                consectetur. Vestibulum sed nibh scelerisque, commodo ipsum at, consectetur purus. Vestibulum erat purus,
                fermentum eu aliquet vitae, elementum sit amet dui. Vestibulum at tristique nisl, vitae egestas ligula. Ut
                eu nisl vel sapien dignissim volutpat non a nibh. Ut sodales ipsum at ex tristique posuere. Donec nec mauris
                quam. Nulla finibus dui in dapibus porta. Fusce semper arcu tortor, et condimentum ex dignissim vel. Orci
                varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque in viverra augue.
                Nullam sit amet lacus sit amet enim varius congue mollis vel turpis.
                </p>
            </div>
            {if !empty($discounted_products)}
                <div class="row row-cols-1 row-cols-md-3 g-2">

                    {foreach $discounted_products as $key => $discounted_product}
                        <div class="col-lg-4 col-md-6 col-sm-6 product-card">
                            <div class="card h-100">
                                <a href="#">
                                    <img src="https://picsum.photos/200/200" class="card-img-top" alt="{$discounted_product.name}">
                                </a>
                                <div class="card-body">
                                    <h6 class="card-title">{$discounted_product.name}</h5>
                                    <p class="card-text">{$discounted_product.description}</p>
                                </div>
                                <div class="card-footer">
                                    <h6 class="card-text text-center card-title">{$discounted_product.brutto_price} RSD {if $discounted_product.discount > 0}<small> (-{$discounted_product.discount}%)</small> {/if}</h5>
                                </div>
                            </div>
                        </div>
                    {/foreach}

                </div>
            {/if}
        </div>
    </div>
{* </div> *}