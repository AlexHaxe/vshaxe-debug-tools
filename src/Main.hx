package;

import features.vis.hxParserVis.HxParserVisFeature;
import features.vis.tokenTreeVis.TokenTreeVisFeature;
import vscode.*;
import features.*;

class Main {
	@:keep
	@:expose("activate")
	static function activate(context:ExtensionContext) {
		Vscode.commands.executeCommand("setContext", "vshaxeDebugToolsActivated", true);

		new HxParserVisFeature(context);
		new TokenTreeVisFeature(context);
		new CursorOffsetFeature(context);
		new HxTestSeparatorFeature(context);
		new FormatterTestDiffFeature(context);
		new ClearHaxeMementosFeature(context);
		new HaxeMethodResultsViewFeature(context);
		new ExpectedActualJsonFeature(context);
	}
}
