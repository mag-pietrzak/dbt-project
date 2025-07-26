{% set old_etl_ralation={{ ref('customer_orders') }} %}
{% set dbt_ralation={{ ref('fct_customer_orders') }} %}

{{ audit_helper.compare_relations(
    a_relation=old_relation,
    b_relation=dbt_relation,
    primary_key='order_id'
) }}