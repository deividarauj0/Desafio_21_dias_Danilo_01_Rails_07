# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, "\\1en"
#   inflect.singular /^(ox)en/i, "\\1"
#   inflect.irregular "person", "people"
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end

# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections do |inflect|
    inflect.clear :all
  
    inflect.plural(/$/, 's')
    inflect.plural(/(r|s|z)$/i, '\1es')
    inflect.plural(/al$/i, 'ais')
    inflect.plural(/el$/i, 'eis')
    inflect.plural(/ol$/i, 'ois')
    inflect.plural(/ul$/i, 'uis')
    inflect.plural(/m$/i, 'ns')
    inflect.plural(/^(japon|escoc|ingl|dinamarqu|fregu|portugu)ês$/i, '\1eses')
    inflect.plural(/^(|g)ás$/i, '\1ases')
    inflect.plural(/ão$/i, 'ões')
    inflect.plural(/^(irm|m)ão$/i, '\1ãos')
    inflect.plural(/^(alem|c|p)ão$/i, '\1ães')
  
    inflect.singular(/s$/i, '')
    inflect.singular(/(r|s|z)es$/i, '\1')
    inflect.singular(/ais$/i, 'al')
    inflect.singular(/eis$/i, 'el')
    inflect.singular(/ois$/i, 'ol')
    inflect.singular(/uis$/i, 'ul')
    inflect.singular(/ns$/i, 'm')
    inflect.singular(/^(.*[^aeiou])ns$/i, '\1m')
    inflect.singular(/sses$/i, 'sse')
    inflect.singular(/^(.*[^s])s$/i, '\1')
  
    inflect.irregular('país', 'países')
    inflect.irregular('user', 'usuários')
  
    inflect.uncountable(%w( tórax tênis ônibus lápis fênix ))

    inflect.plural(/$/, 's')
    inflect.plural(/(r)$/i, '\1es')
    inflect.plural(/or$/i, 'ores')

    inflect.singular(/s$/i, '')
    inflect.singular(/(es)$/i, '\1or')

    inflect.irregular('fornecedor', 'fornecedores')
end
