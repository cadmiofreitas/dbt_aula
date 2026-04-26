{% macro get_audit_database() %}
  {{ return(target.database) }}
{% endmacro %}