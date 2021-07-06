const math = @import("zalgebra");
const vec3 = math.vec3;
const mat4 = math.mat4;

pub fn main() void {
    var projection = math.perspective(45.0, 800.0 / 600.0, 0.1, 100.0);
    var view = math.look_at(vec3.new(0.0, 0.0, -3.0), vec3.new(0.0, 0.0, 0.0), vec3.new(0.0, 1.0, 0.0));
    var model = mat4.from_translate(vec3.new(0.2, 0.5, 0.0));
  
    var mvp = mat4.mult(projection, view.mult(model));
    _ = mvp;
}