import XCTest
@testable import ExtoleClientAPI

final class PersonV5ResponseDecodingTests: XCTestCase {

    func testDecodesPerson() throws {
        let json = """
        {
          "id": "7059776202829706264",
          "identity_id": "7059776202829706265",
          "identity_key": "email",
          "identity_key_value": "april@advocate.com",
          "locale": { "last_browser": "en-US", "user_specified": null },
          "version": "3"
        }
        """
        let person = try decode(PersonV5Response.self, json)

        XCTAssertEqual(person._id, "7059776202829706264")
        XCTAssertEqual(person.identityKey, "email")
        XCTAssertEqual(person.identityKeyValue, "april@advocate.com")
        XCTAssertEqual(person.locale?.lastBrowser, "en-US")
    }

    func testDecodesSteps() throws {
        let json = """
        [{
          "id": "6830397826523129124",
          "name": "converted",
          "event_id": "6830397826523129000",
          "quality": "HIGH",
          "scope": "PUBLIC",
          "event_date": "2020-05-24T06:12:02.908-07:00",
          "created_date": "2020-05-24T06:12:03.000-07:00",
          "updated_date": "2020-05-24T06:12:03.000-07:00",
          "program": "refer-a-friend",
          "campaign_id": "6830394627794392001",
          "journey_name": "friend",
          "journey_key": { "name": "advocate_code", "value": "d6363t" },
          "container": "production",
          "is_primary": true,
          "cause_event_id": "6830397826523129000",
          "root_event_id": "6830397826523129000",
          "data": {
            "cart_value": { "name": "cart_value", "scope": "PUBLIC", "value": 42.5, "key_type": "VALUE" }
          }
        }]
        """
        let steps = try decode([PersonStepV5Response].self, json)

        XCTAssertEqual(steps.count, 1)
        XCTAssertEqual(steps[0].name, "converted")
        XCTAssertEqual(steps[0].quality, .high)
        XCTAssertNotNil(steps[0].eventDate)
        XCTAssertEqual(steps[0].journeyKey?.value, "d6363t")
        XCTAssertEqual(steps[0].data?["cart_value"]?.keyType, .value)
        XCTAssertEqual(steps[0].data?["cart_value"]?.value, .double(42.5))
    }

    func testDecodesRewards() throws {
        let json = """
        [{
          "id": "6830397826523129200",
          "name": "advocate_reward",
          "state": "EARNED",
          "face_value": 10.00,
          "face_value_type": "USD",
          "earned_date": "2020-05-24T06:12:02.908-07:00",
          "created_date": "2020-05-24T06:12:02.908-07:00",
          "updated_date": "2020-05-24T06:12:02.908-07:00",
          "reward_supplier_id": "6830394627794392100",
          "tags": ["referral"]
        }]
        """
        let rewards = try decode([PersonRewardV5Response].self, json)

        XCTAssertEqual(rewards[0].state, .earned)
        XCTAssertEqual(rewards[0].faceValue, Decimal(10))
        XCTAssertEqual(rewards[0].faceValueType, .usd)
        XCTAssertNotNil(rewards[0].earnedDate)
    }

    func testDecodesShares() throws {
        let json = """
        [{
          "id": "6830397826523129124",
          "program": "refer-a-friend",
          "campaign_id": "6830394627794392001",
          "shareable_code": "d6363t",
          "link": "https://refer.brand.com/s/d6363t",
          "channel": "EXTOLE_EMAIL",
          "message": "Dummy message",
          "recipient": "friend@example.com",
          "other_person_id": "6830397828381759009",
          "partner_id": null,
          "subject": null,
          "data": { "friend_first_name": { "name": "friend_first_name", "value": "Julio" } },
          "created_date": "2020-05-24T06:12:02.908-07:00"
        }]
        """
        let shares = try decode([PersonShareV5Response].self, json)

        XCTAssertEqual(shares[0].shareableCode, "d6363t")
        XCTAssertEqual(shares[0].otherPersonId, "6830397828381759009")
        XCTAssertNotNil(shares[0].createdDate)
    }

    private func decode<T: Decodable>(_ type: T.Type, _ json: String) throws -> T {
        let result = CodableHelper.decode(type, from: Data(json.utf8))
        if let error = result.error {
            throw error
        }
        return try XCTUnwrap(result.decodableObj)
    }
}
