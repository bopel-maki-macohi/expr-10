import flixel.FlxState;

class PlayState extends FlxState
{
	override function create()
	{
		super.create();

        var testSprite:DragSprite = new DragSprite(0,0);
        testSprite.makeGraphic(128, 128);
        add(testSprite);

        testSprite.screenCenter();
	}
}
