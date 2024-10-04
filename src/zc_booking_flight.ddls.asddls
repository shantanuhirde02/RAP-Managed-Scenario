@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for the Booking view.'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_BOOKING_FLIGHT as projection on ZI_BOOKING_FLIGHT
{
    key TravelId,
    key BookingId,
    BookingDate,
    @ObjectModel.text.element: [ 'CustomerName' ]
    CustomerId,
    _Customer.FirstName as CustomerName,
    @ObjectModel.text.element: [ 'CarrierName' ]
    CarrierId,
    _Carrier.Name as CarrierName,
    ConnectionId,
    FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    FlightPrice,
    CurrencyCode,
    @ObjectModel.text.element: [ 'OverallStatustext' ]
    BookingStatus,
    _Status._Text.OverallStatus as OverallStatustext :localized,
    LastChangedAt,
    /* Associations */
    _Carrier,
    _Connection,
    _Customer,
    _Status,
    _Travel:redirected to parent ZC_TRAVEL_FLIGHT,
    _BookingSup:redirected to composition child ZC_BOOKING_SFLIGHT
}
