struct vertexOutput {
    @builtin(position) clip_position: vec4<f32>,
};

@vertex
fn vs_main(
    @builtin(vertex_index) in_vertex_index: u32,
) -> vertexOutput {
    var out: vertexOutput;
    let x = f32(1 - i32(in_vertex_index)) * .5;
    let y = f32(i32(in_vertex_index & 1u) * 2 - 1) * .5;
    out.clip_position = vec4<f32>(x, y, 0.0, 1.0);
    return out;
}
