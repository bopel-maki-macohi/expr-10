import flixel.FlxState;
import flixel.FlxG;

class InitState extends FlxState
{
	override public function create()
	{
		super.create();

		FlxG.switchState(() -> new SplashState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
