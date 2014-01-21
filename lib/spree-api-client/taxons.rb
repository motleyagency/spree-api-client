module Spree
  module API
    class Client
      module Taxons
        
        def character_taxon(internal_tag, options={})
          get("taxons/character/#{internal_tag}", options)
        end

        def taxons(taxon_ids=nil, options={})
          if taxon_ids.nil? || taxon_ids.empty?
            get("taxons", options)
          else
            get("taxons/?ids=#{taxon_ids.join(',')}", options)
          end
        end

        def taxonomy_taxons(taxonomy_id, options={})
          get("taxonomies/#{taxonomy_id}/taxons", options)
        end

        def taxonomy_taxon(taxonomy_id, taxon_id, options={})
          get("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end

        def create_taxon(taxonomy_id, options={})
          post("taxonomies/#{taxonomy_id}/taxons/", options)
        end

        def update_taxon(taxonomy_id, taxon_id, options={})
          put("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end

        def delete_taxon(taxonomy_id, taxon_id, options={})
          delete("taxonomies/#{taxonomy_id}/taxons/#{taxon_id}", options)
        end
      end
    end
  end
end
