require_relative '../entities'

module TestHanamiApp
  module Repositories
    class Repository < ROM::Repository::Root
      struct_namespace TestHanamiApp::Entities

      def self.new
        super(Persistence.db)
      end

      def find_by(conditions)
        root.where(conditions).first
      end

      def all
        root.to_a
      end

      def first
        root.first
      end

      def last
        root.last
      end

      def create(attrs)
        root.changeset(:create, attrs).map(:add_timestamps).commit
      end

      def update(id, attrs)
        root.by_pk(id).changeset(:update, attrs).map(:touch).commit
      end

      def delete(id)
        root.by_pk(id).delete
      end

      def clear
        root.delete
      end

      def entity_class
        root.mapper.model
      end
    end
  end
end
