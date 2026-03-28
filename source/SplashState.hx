package;

import flixel.util.FlxTimer;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class SplashState extends FlxState
{
    public var companyText:ButtonText;

	override function create()
	{
		super.create();

        companyText = new ButtonText(FlxG.stage.application.meta.get('company'), false, ButtonText.SCALE_MAIN);
        add(companyText);
        companyText.screenCenter();

		#if debug
		trace('Skipping splash...');
		endSplash();
		return;
		#end

		trace('Starting splash...');

		FlxG.sound.play('assets/sounds/splash.wav');
		FlxTween.tween(companyText, {alpha: 0}, 1, {
			startDelay: 1,
			onComplete: function(t)
			{
				FlxTimer.wait(1, endSplash);
			}
		});
	}

	public function endSplash()
	{
		trace('Ending splash...');

		startingStateBehavior();
	}

	public static function startingStateBehavior()
    {
		FlxG.switchState(() -> new PlayState());
    }
}
