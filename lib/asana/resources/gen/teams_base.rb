### WARNING: This file is auto-generated by our OpenAPI spec. Do not
### edit it manually.

require_relative '../../resource_includes/response_helper'

module Asana
  module Resources
    class TeamsBase < Resource

      def self.inherited(base)
        Registry.register(base)
      end

      class << self
        # Add a user to a team
        #
        # team_gid - [str]  (required) Globally unique identifier for the team.
        # options - [Hash] the request I/O options
        # > opt_fields - [list[str]]  Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
        # > opt_pretty - [bool]  Provides “pretty” output. Provides the response in a “pretty” format. In the case of JSON this means doing proper line breaking and indentation to make it readable. This will take extra time and increase the response size so it is advisable only to use this during debugging.
        # data - [Hash] the attributes to POST
        def add_user_for_team(client, team_gid: required("team_gid"), options: {}, **data)
          path = "/teams/{team_gid}/addUser"
          path["{team_gid}"] = team_gid
          parse(client.post(path, body: data, options: options)).first
        end

        # Create a team
        #

        # options - [Hash] the request I/O options
        # > offset - [str]  Offset token. An offset to the next page returned by the API. A pagination request will return an offset token, which can be used as an input parameter to the next request. If an offset is not passed in, the API will return the first page of results. 'Note: You can only pass in an offset that was returned to you via a previously paginated request.'
        # > limit - [int]  Results per page. The number of objects to return per page. The value must be between 1 and 100.
        # > opt_fields - [list[str]]  Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
        # > opt_pretty - [bool]  Provides “pretty” output. Provides the response in a “pretty” format. In the case of JSON this means doing proper line breaking and indentation to make it readable. This will take extra time and increase the response size so it is advisable only to use this during debugging.
        # data - [Hash] the attributes to POST
        def create_team(client, options: {}, **data)
          path = "/teams"
          Team.new(parse(client.post(path, body: data, options: options)).first, client: client)
        end

        # Get a team
        #
        # team_gid - [str]  (required) Globally unique identifier for the team.
        # options - [Hash] the request I/O options
        # > offset - [str]  Offset token. An offset to the next page returned by the API. A pagination request will return an offset token, which can be used as an input parameter to the next request. If an offset is not passed in, the API will return the first page of results. 'Note: You can only pass in an offset that was returned to you via a previously paginated request.'
        # > limit - [int]  Results per page. The number of objects to return per page. The value must be between 1 and 100.
        # > opt_fields - [list[str]]  Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
        # > opt_pretty - [bool]  Provides “pretty” output. Provides the response in a “pretty” format. In the case of JSON this means doing proper line breaking and indentation to make it readable. This will take extra time and increase the response size so it is advisable only to use this during debugging.
        def get_team(client, team_gid: required("team_gid"), options: {})
          path = "/teams/{team_gid}"
          path["{team_gid}"] = team_gid
          Team.new(parse(client.get(path, options: options)).first, client: client)
        end

        # Get teams in an organization
        #
        # workspace_gid - [str]  (required) Globally unique identifier for the workspace or organization.
        # options - [Hash] the request I/O options
        # > offset - [str]  Offset token. An offset to the next page returned by the API. A pagination request will return an offset token, which can be used as an input parameter to the next request. If an offset is not passed in, the API will return the first page of results. 'Note: You can only pass in an offset that was returned to you via a previously paginated request.'
        # > limit - [int]  Results per page. The number of objects to return per page. The value must be between 1 and 100.
        # > opt_fields - [list[str]]  Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
        # > opt_pretty - [bool]  Provides “pretty” output. Provides the response in a “pretty” format. In the case of JSON this means doing proper line breaking and indentation to make it readable. This will take extra time and increase the response size so it is advisable only to use this during debugging.
        def get_teams_for_organization(client, workspace_gid: required("workspace_gid"), options: {})
          path = "/organizations/{workspace_gid}/teams"
          path["{workspace_gid}"] = workspace_gid
          Collection.new(parse(client.get(path, options: options)), type: Team, client: client)
        end

        # Get teams for a user
        #
        # user_gid - [str]  (required) A string identifying a user. This can either be the string \"me\", an email, or the gid of a user.
        # organization - [str]  (required) The workspace or organization to filter teams on.
        # options - [Hash] the request I/O options
        # > offset - [str]  Offset token. An offset to the next page returned by the API. A pagination request will return an offset token, which can be used as an input parameter to the next request. If an offset is not passed in, the API will return the first page of results. 'Note: You can only pass in an offset that was returned to you via a previously paginated request.'
        # > limit - [int]  Results per page. The number of objects to return per page. The value must be between 1 and 100.
        # > opt_fields - [list[str]]  Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
        # > opt_pretty - [bool]  Provides “pretty” output. Provides the response in a “pretty” format. In the case of JSON this means doing proper line breaking and indentation to make it readable. This will take extra time and increase the response size so it is advisable only to use this during debugging.
        def get_teams_for_user(client, user_gid: required("user_gid"), organization: nil, options: {})
          path = "/users/{user_gid}/teams"
          path["{user_gid}"] = user_gid
          params = { organization: organization }.reject { |_,v| v.nil? || Array(v).empty? }
          Collection.new(parse(client.get(path, params: params, options: options)), type: Team, client: client)
        end

        # Remove a user from a team
        #
        # team_gid - [str]  (required) Globally unique identifier for the team.
        # options - [Hash] the request I/O options
        # > opt_fields - [list[str]]  Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
        # > opt_pretty - [bool]  Provides “pretty” output. Provides the response in a “pretty” format. In the case of JSON this means doing proper line breaking and indentation to make it readable. This will take extra time and increase the response size so it is advisable only to use this during debugging.
        # data - [Hash] the attributes to POST
        def remove_user_for_team(client, team_gid: required("team_gid"), options: {}, **data)
          path = "/teams/{team_gid}/removeUser"
          path["{team_gid}"] = team_gid
          parse(client.post(path, body: data, options: options)).first
        end

      end
    end
  end
end
