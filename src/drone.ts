///<reference path="babylon.d.ts" />

class Drone {
	private rotors: [BABYLON.Mesh];
	private frame: BABYLON.Mesh;
	private pos: BABYLON.Vector3;
	private rot: BABYLON.RotationGizmo;

	constructor(name: string, pos: BABYLON.Vector3, scene: BABYLON.Scene) {
		this.frame = new BABYLON.Mesh(name + ".frame", scene);

		this.frame.addChild(BABYLON.MeshBuilder.CreateTorus(name + ".frame.guard.FL", {
			"diameter": 5,
			"thickness": 2
		}, scene)).position = new BABYLON.Vector3(-1, 0, -1);

		this.frame.addChild(BABYLON.MeshBuilder.CreateTorus(name + ".frame.guard.FR", {
			"diameter": 5,
			"thickness": 2
		}, scene)).position = new BABYLON.Vector3(1, 0, -1);

		this.frame.addChild(BABYLON.MeshBuilder.CreateTorus(name + ".frame.guard.BL", {
			"diameter": 5,
			"thickness": 2
		}, scene)).position = new BABYLON.Vector3(-1, 0, 1);

		this.frame.addChild(BABYLON.MeshBuilder.CreateTorus(name + ".frame.guard.BR", {
			"diameter": 5,
			"thickness": 2
		}, scene)).position = new BABYLON.Vector3(1, 0, 1);

		this.frame.position = pos;
	}
}

export { Drone };