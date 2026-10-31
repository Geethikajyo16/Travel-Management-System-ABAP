@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel Management'
@Metadata.allowExtensions: true
define root view entity ZR_ZTRAVEL
  as select from ztravel
{
  key travel_uuid            as TravelUUID,
      agency_id              as AgencyID,
      customer_id            as CustomerID,
      begin_date             as BeginDate,
      end_date               as EndDate,
      booking_fee             as BookingFee,
      total_price             as TotalPrice,
      currency_code           as CurrencyCode,
      status                  as Status,

      @Semantics.user.createdBy: true
      created_by              as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at              as CreatedAt,

      @Semantics.user.lastChangedBy: true
      last_changed_by         as LastChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at         as LastChangedAt,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at   as LocalLastChangedAt
}
