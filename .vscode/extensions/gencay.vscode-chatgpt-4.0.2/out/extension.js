"use strict";var d=Object.create;var c=Object.defineProperty;var v=Object.getOwnPropertyDescriptor;var l=Object.getOwnPropertyNames;var h=Object.getPrototypeOf,p=Object.prototype.hasOwnProperty;var w=(t,e)=>{for(var o in e)c(t,o,{get:e[o],enumerable:!0})},r=(t,e,o,i)=>{if(e&&typeof e=="object"||typeof e=="function")for(let n of l(e))!p.call(t,n)&&n!==o&&c(t,n,{get:()=>e[n],enumerable:!(i=v(e,n))||i.enumerable});return t};var m=(t,e,o)=>(o=t!=null?d(h(t)):{},r(e||!t||!t.__esModule?c(o,"default",{value:t,enumerable:!0}):o,t)),u=t=>r(c({},"__esModule",{value:!0}),t);var g={};w(g,{activate:()=>b,deactivate:()=>x});module.exports=u(g);var a=m(require("vscode"));var s=class{constructor(e){this.context=e}resolveWebviewView(e,o,i){this.webView=e,e.webview.options={enableScripts:!0,localResourceRoots:[this.context.extensionUri]},e.webview.html=this.getWebviewHtml(e.webview)}getWebviewHtml(e){let o=this.getRandomId();return`<!DOCTYPE html>
			<html lang="en">
			<head>
				<meta charset="UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<meta http-equiv="Content-Security-Policy" content="default-src 'none'; style-src ${e.cspSource}; img-src ${e.cspSource} https:; script-src 'nonce-${o}';">
			</head>
			<body class="overflow-hidden">
					<h3>Deprecated and open-sourced</h3>
					<p>This extension will soon be deprecated and the source code has been published on the repository. Once deprecation process is completed, you will get a notification to migrate. And you can easily migrate from your VS Code extensions - Installed extensions</p>
					<hr/>
					<h2 id="you-can-try-this-extension">Try <a href="vscode:extension/genieai.chatgpt-vscode">this extension instead</a></h2>
					<hr>
			</body>
			</html>`}getRandomId(){let e="",o="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";for(let i=0;i<32;i++)e+=o.charAt(Math.floor(Math.random()*o.length));return e}};async function b(t){let e=new s(t),o=a.window.registerWebviewViewProvider("vscode-chatgpt.view",e,{webviewOptions:{retainContextWhenHidden:!0}});t.subscriptions.push(o)}function x(){}0&&(module.exports={activate,deactivate});
