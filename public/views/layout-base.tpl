{include file="header.tpl"}
<div class="container">
    {include file="nav.tpl"}
    {if !empty($page)}
        {include file=$page}
    {/if}
</div>
{include file="footer.tpl"}