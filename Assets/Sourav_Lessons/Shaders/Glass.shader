Shader "Sourav/Glass"
{
	Properties
	{
		_Color("Color", Color) = (1,1,1,1)
		_Maintex("Albedo(RGB)", 2D) = "white" {}
	}

	SubShader
	{
		CGPROGRAM
		#pragma surface surf Lambert

		struct Input
		{
			float2 uv_MainTex;
		};
		sampler2D _MainTex;
		float4 _Color;

		void surf(Input IN, inout SurfaceOutput output)
		{
			output.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb * _Color.rgb;
		}
		ENDCG
	}
}