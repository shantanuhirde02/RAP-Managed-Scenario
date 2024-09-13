@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for the Booking view.'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_BOOKING_FLIGHT as projection on ZI_BOOKING_FLIGHT
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _Carrier,
    _Connection,
    _Customer,
    _Status,
    _Travel:redirected to parent ZC_TRAVEL_FLIGHT,
    _BookingSup:redirected to composition child ZC_BOOKING_SFLIGHT
}
