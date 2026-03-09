package moon.dependency.scripting;

import moon.hardcoded_shaders.DropShadowShader;
import moon.global_obj.TextScroll;
import openfl.display.BlendMode;
import nz.script.Interpreter;
import nz.script.NxProxy;

/**
 * Class meant to handle scripts, using the PEAK NzScript.
 */
class MoonScript extends Interpreter
{
    public var interp:Interpreter;

    public function new(path:String, ?debug:Bool = false, ?strict:Bool = false)
    {
        super(debug, strict);
        if(Paths.exists(path))
        {
            interp = new Interpreter();
            interp.run(Paths.getFileContent(path));
            //for(variableName => variableValue in DEFAULT_VARIABLES)
            //    code.set(variableName, variableValue);
        }
        else trace('Script path at $path was not found!', "ERROR");
    }
}