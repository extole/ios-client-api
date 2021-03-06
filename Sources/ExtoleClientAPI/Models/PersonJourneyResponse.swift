//
// PersonJourneyResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PersonJourneyResponse: Codable {

    public var _id: String?
    public var campaignId: String?
    public var entryLabel: String?
    public var container: String?
    public var journeyType: String?
    public var entryReason: String?
    public var entryZone: String?
    public var lastZone: String?
    public var entrySource: String?
    public var lastSource: String?
    public var entryChannel: String?
    public var lastChannel: String?
    public var entryShareId: String?
    public var lastShareId: String?
    public var entryShareableId: String?
    public var lastShareableId: String?
    public var entryAdvocateCode: String?
    public var lastAdvocateCode: String?
    public var entryPromotableCode: String?
    public var lastPromotableCode: String?
    public var entryConsumerEventId: String?
    public var lastConsumerEventId: String?
    public var entryProfileId: String?
    public var lastProfileId: String?
    public var entryAdvocatePartnerId: String?
    public var lastAdvocatePartnerId: String?
    public var entryCouponCode: String?
    public var lastCouponCode: String?
    public var entryReferralReason: String?
    public var lastReferralReason: String?
    public var entryReferralSource: String?
    public var lastReferralSource: String?
    public var createdDate: Date?
    public var updatedDate: Date?
    public var data: [PersonDataResponse]?

    public init(_id: String? = nil, campaignId: String? = nil, entryLabel: String? = nil, container: String? = nil, journeyType: String? = nil, entryReason: String? = nil, entryZone: String? = nil, lastZone: String? = nil, entrySource: String? = nil, lastSource: String? = nil, entryChannel: String? = nil, lastChannel: String? = nil, entryShareId: String? = nil, lastShareId: String? = nil, entryShareableId: String? = nil, lastShareableId: String? = nil, entryAdvocateCode: String? = nil, lastAdvocateCode: String? = nil, entryPromotableCode: String? = nil, lastPromotableCode: String? = nil, entryConsumerEventId: String? = nil, lastConsumerEventId: String? = nil, entryProfileId: String? = nil, lastProfileId: String? = nil, entryAdvocatePartnerId: String? = nil, lastAdvocatePartnerId: String? = nil, entryCouponCode: String? = nil, lastCouponCode: String? = nil, entryReferralReason: String? = nil, lastReferralReason: String? = nil, entryReferralSource: String? = nil, lastReferralSource: String? = nil, createdDate: Date? = nil, updatedDate: Date? = nil, data: [PersonDataResponse]? = nil) {
        self._id = _id
        self.campaignId = campaignId
        self.entryLabel = entryLabel
        self.container = container
        self.journeyType = journeyType
        self.entryReason = entryReason
        self.entryZone = entryZone
        self.lastZone = lastZone
        self.entrySource = entrySource
        self.lastSource = lastSource
        self.entryChannel = entryChannel
        self.lastChannel = lastChannel
        self.entryShareId = entryShareId
        self.lastShareId = lastShareId
        self.entryShareableId = entryShareableId
        self.lastShareableId = lastShareableId
        self.entryAdvocateCode = entryAdvocateCode
        self.lastAdvocateCode = lastAdvocateCode
        self.entryPromotableCode = entryPromotableCode
        self.lastPromotableCode = lastPromotableCode
        self.entryConsumerEventId = entryConsumerEventId
        self.lastConsumerEventId = lastConsumerEventId
        self.entryProfileId = entryProfileId
        self.lastProfileId = lastProfileId
        self.entryAdvocatePartnerId = entryAdvocatePartnerId
        self.lastAdvocatePartnerId = lastAdvocatePartnerId
        self.entryCouponCode = entryCouponCode
        self.lastCouponCode = lastCouponCode
        self.entryReferralReason = entryReferralReason
        self.lastReferralReason = lastReferralReason
        self.entryReferralSource = entryReferralSource
        self.lastReferralSource = lastReferralSource
        self.createdDate = createdDate
        self.updatedDate = updatedDate
        self.data = data
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case campaignId = "campaign_id"
        case entryLabel = "entry_label"
        case container
        case journeyType = "journey_type"
        case entryReason = "entry_reason"
        case entryZone = "entry_zone"
        case lastZone = "last_zone"
        case entrySource = "entry_source"
        case lastSource = "last_source"
        case entryChannel = "entry_channel"
        case lastChannel = "last_channel"
        case entryShareId = "entry_share_id"
        case lastShareId = "last_share_id"
        case entryShareableId = "entry_shareable_id"
        case lastShareableId = "last_shareable_id"
        case entryAdvocateCode = "entry_advocate_code"
        case lastAdvocateCode = "last_advocate_code"
        case entryPromotableCode = "entry_promotable_code"
        case lastPromotableCode = "last_promotable_code"
        case entryConsumerEventId = "entry_consumer_event_id"
        case lastConsumerEventId = "last_consumer_event_id"
        case entryProfileId = "entry_profile_id"
        case lastProfileId = "last_profile_id"
        case entryAdvocatePartnerId = "entry_advocate_partner_id"
        case lastAdvocatePartnerId = "last_advocate_partner_id"
        case entryCouponCode = "entry_coupon_code"
        case lastCouponCode = "last_coupon_code"
        case entryReferralReason = "entry_referral_reason"
        case lastReferralReason = "last_referral_reason"
        case entryReferralSource = "entry_referral_source"
        case lastReferralSource = "last_referral_source"
        case createdDate = "created_date"
        case updatedDate = "updated_date"
        case data
    }

}
