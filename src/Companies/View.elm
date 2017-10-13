module Companies.View exposing (..)

import Companies.Model exposing (Model)
import Msgs exposing (Msg)
import Html exposing (..)
import Html.Attributes exposing (..)


renderCompany : Model -> Html Msg
renderCompany company =
    div [ class "company-item" ]
        [ header []
            [ img [ src company.image ] []
            , h2 [] [ text company.name ]
            ]
        , div [ class "company-item-body" ]
            [ a
                [ href company.link
                , target "_blank"
                , class "company-reference"
                ]
                [ text "Fonte" ]
            , a
                [ href company.twitter
                , target "_blank"
                , class "company-twitter"
                ]
                [ text "Twitter da Empresa" ]
            ]
        ]


renderCompanies : List Model -> Html Msg
renderCompanies companyList =
    div [] <|
        List.map renderCompany companyList
