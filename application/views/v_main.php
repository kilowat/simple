<?=$header?>

<body>

<div class="wrapper">

	<div class="header">
		<strong>Header:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tortor. Praesent dictum, libero ut tempus dictum, neque eros elementum mauris, quis mollis arcu velit ac diam. Etiam neque. Quisque nec turpis. Aliquam arcu nulla, dictum et, lacinia a, mollis in, ante. Sed eu felis in elit tempor venenatis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut ultricies porttitor purus. Proin non tellus at ligula fringilla tristique. Fusce vehicula quam. Curabitur vel tortor vitae pede imperdiet ultrices. Sed tortor.
	</div><!-- .header-->
    
        <?if($topMenu):?>
         <?=$topMenu?>
        <?endif?>
	
        <div class="middle">

		<div class="container">
       <?=$center?>

	</div>

	<?=$footer?>

</div><!-- .wrapper -->

</body>
</html>