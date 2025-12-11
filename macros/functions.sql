 {% macro margin_percent(revenue, purchase_cost, macro_var=2) %}
     {{ (SAFE_DIVIDE(revenue - purchase_cost) / revenue * 100) | round(macro_var) }}% AS margin_percent
 {% endmacro %}