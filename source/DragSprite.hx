import flixel.math.FlxPoint;
import flixel.FlxG;
import flixel.FlxSprite;

class DragSprite extends FlxSprite
{
	public var mousePositionOffsets:FlxPoint = new FlxPoint();
	public var dragging:Bool = false;

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.overlaps(this))
		{
			if (FlxG.mouse.justPressed)
			{
				mousePositionOffsets.set(this.x - FlxG.mouse.x, this.y - FlxG.mouse.y);
				dragging = true;
			}

			if (FlxG.mouse.justReleased)
				dragging = false;

			if (dragging)
			{
				setPosition(FlxG.mouse.x + mousePositionOffsets.x, FlxG.mouse.y + mousePositionOffsets.y);
			}
		}
	}
}
