{%- macro cents_to_dollars(column_name, round_num=2) -%}

round(1 * {{column_name}}/100, {{round_num}})

{%- endmacro -%}