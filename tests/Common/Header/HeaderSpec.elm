module Common.Header.HeaderSpec exposing (..)
import Common.Header.Model exposing (Model)
import Common.Header.View exposing (mainHeader)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Test exposing (..)


tests : Test
tests =
    describe "Header"
        [ test "that header is rendered with the correct title" <|
            \() ->
            Query.has [ Selector.text "Hello, World!" ] <|
            Query.find [ Selector.tag "h1" ] <|
            Query.fromHtml <|
                mainHeader <|
                    { title         = "Hello, World!"
                    , subtitle      = "My subtitle" }
        , test "that header is rendered with the correct subtitle" <|
            \() ->
            Query.has [ Selector.text "My subtitle" ] <|
            Query.find [ Selector.tag "h2" ] <|
            Query.fromHtml <|
                mainHeader <|
                    { title         = "Hello, World!"
                    , subtitle      = "My subtitle" }
        ]
