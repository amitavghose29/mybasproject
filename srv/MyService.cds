using {my.product as my } from '../db/product';
@path: 'srv/CatalogService'
service MyService {
       entity Product @updateonly as projection on my.Product;
}

/**annotate MyService.Product with @(
    UI: {
        HeaderInfo: {
            TypeName: 'Product',
            TypeNamePlural: 'Product',
            Title: { Value: PRODUCTID },
            Description: { Value: PRODUCTNAME }
        },
        SelectionFields: [ PRODUCTID, PRODUCTNAME, UNITSINSTOCK ],
        LineItem: [
            { Value: PRODUCTID },
            { Value: PRODUCTNAME },
            { Value: QUANTITYPERUNIT},
            { Value: UNITPRICE},
            { Value: UNITSINSTOCK}               
        ],
        Facets: [
            {
                $Type: 'UI.CollectionFacet',
                Label: 'Product Info',
                Facets: [
                    {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Main', Label: 'Product Item'}
                ]
            }
        ],        
        FieldGroup#Main: {
            Data: [
                { Value: PRODUCTID },
                { Value: PRODUCTNAME },
                { Value: QUANTITYPERUNIT },
                { Value: UNITPRICE },
                { Value: UNITSINSTOCK }               
            ]
        }
    }
);**/



