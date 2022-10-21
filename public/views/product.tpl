{* <div class="container"> *}
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
            <div class="row mb-5">
                <div class="col-4">
                    <img src="https://picsum.photos/200/200" class="card-img-top" alt="{$product.name}">
                </div>

                <div class="col-8">
                    
                    <p class="card-text">
                        {$product.name}
                        <hr>
                        {$product.code}
                        <hr>
                        {$product.brutto_price} RSD {if $product.discount > 0}<small> (-{$product.discount}%)</small> {/if}
                        <hr>
                        {$product.description}
                    </p>
                </div>
            </div>
        </div>
    </div>
{* </div> *}