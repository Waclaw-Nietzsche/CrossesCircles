
$(document).ready(function()
{
    $('[lang="en"]').hide();
    $('#switch-lang').click(function()
    {
        $('[lang="en"]').toggle();
        $('[lang="ru"]').toggle()
    });
});