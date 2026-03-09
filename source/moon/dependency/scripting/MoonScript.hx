package moon.dependency.scripting;

import moon.hardcoded_shaders.DropShadowShader;
import moon.global_obj.TextScroll;
import openfl.display.BlendMode;

/**
 * Class meant to handle scripts, using the PEAK NzScript.
 */
class MoonScript extends Interpreter
{
    public function new(path:String, ?debug:Bool = false, ?strict:Bool = false)
    {
        super(debug, strict);
        if(Paths.exists('$path.nx')) run(Paths.getFileContent('$path.nx'));
        else trace('Script path at $path was not found!', "ERROR");
    }
}