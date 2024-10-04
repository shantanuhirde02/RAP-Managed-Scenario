@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for  Booking Supp view.'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_BOOKING_SFLIGHT as projection on ZI_BOOKING_SFLIGHT
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking:redirected to parent ZC_BOOKING_FLIGHT,
    _Supplement,
    _SupplementText,
    _Travel:redirected to ZC_TRAVEL_FLIGHT
}
