@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for the Travel view.'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_TRAVEL_FLIGHT
  provider contract transactional_query as projection on ZI_TRAVEL_FLIGHT
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Agency,
    _Booking:redirected to composition child ZC_BOOKING_FLIGHT,
    _Currency,
    _Customer,
    _Status
}
