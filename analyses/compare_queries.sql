

{% set old_relation = ref('customer_orders') -%}
{% set dbt_relation = ref('fct_customer_orders') %}

{{ audit_helper.compare_relations(
    a_relation = old_relation,
    b_relation = dbt_relation,
    exclude_columns = ["loaded_at"],
    primary_key = "order_id"
) }}