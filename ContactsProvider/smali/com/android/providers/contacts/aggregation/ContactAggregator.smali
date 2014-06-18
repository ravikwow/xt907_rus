.class public Lcom/android/providers/contacts/aggregation/ContactAggregator;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/aggregation/ContactAggregator$1;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactIdQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$LookupKeyQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoFileQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoIdQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$PhoneLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$EmailLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQueryWithParameter;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$IdentityLookupMatchQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionPrefetchQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdAndAccountQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdAndAggregationModeQuery;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;,
        Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;
    }
.end annotation


# static fields
.field private static final DEBUG_LOGGING:Z

.field private static final PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mAggregationExceptionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAggregationExceptionIdsValid:Z

.field private mCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

.field private final mCommonNicknameCache:Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

.field private mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

.field private mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mEnabled:Z

.field private mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

.field private mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdIdentity:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdPhoto:J

.field private final mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field private mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactsMarkedForAggregation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactsQueryByContactId:Ljava/lang/String;

.field private mRawContactsQueryByRawContactId:Ljava/lang/String;

.field private mResetPinnedForRawContact:Landroid/database/sqlite/SQLiteStatement;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSelectionArgs3:[Ljava/lang/String;

.field private mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "ContactAggregator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->DEBUG_LOGGING:Z

    .line 90
    const-string v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    .line 127
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 132
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V
    .locals 10
    .param p1, "contactsProvider"    # Lcom/android/providers/contacts/ContactsProvider2;
    .param p2, "contactsDatabaseHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "photoPriorityResolver"    # Lcom/android/providers/contacts/PhotoPriorityResolver;
    .param p4, "nameSplitter"    # Lcom/android/providers/contacts/NameSplitter;
    .param p5, "commonNicknameCache"    # Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v7, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mEnabled:Z

    .line 164
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    .line 166
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 167
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 168
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    .line 176
    new-instance v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator$1;)V

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    .line 177
    new-instance v2, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {v2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .line 178
    new-instance v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    invoke-direct {v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    .line 1135
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    .line 270
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 271
    iput-object p2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 272
    iput-object p3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 273
    iput-object p4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 274
    iput-object p5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    .line 276
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 280
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 300
    .local v1, "replaceAggregatePresenceSql":Ljava/lang/String;
    const-string v2, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 302
    const-string v2, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 308
    const-string v2, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 312
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    .line 318
    const-string v2, "UPDATE contacts SET photo_id=?,photo_file_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 323
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 328
    const-string v2, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 333
    const-string v2, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 339
    const-string v2, "UPDATE contacts SET pinned=(SELECT MIN(pinned) FROM raw_contacts WHERE contact_id=contacts._id AND pinned>-1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 345
    const-string v2, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 351
    const-string v2, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 356
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 361
    const-string v2, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 366
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, pinned=?, has_phone_number=?, lookup=?, contact_last_updated_timestamp=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 367
    const-string v2, "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, pinned, has_phone_number, lookup, contact_last_updated_timestamp)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 369
    const-string v2, "UPDATE raw_contacts SET pinned=2147483647 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mResetPinnedForRawContact:Landroid/database/sqlite/SQLiteStatement;

    .line 374
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdEmail:J

    .line 375
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/identity"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdIdentity:J

    .line 376
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhoto:J

    .line 377
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhone:J

    .line 380
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT raw_contacts._id,display_name,display_name_source,accounts.account_type,accounts.account_name,accounts.data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,pinned,name_verified,data._id,data.mimetype_id,is_super_primary,data14 FROM raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id) LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE raw_contacts._id=?"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    iget-wide v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    .line 384
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT raw_contacts._id,display_name,display_name_source,accounts.account_type,accounts.account_name,accounts.data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,pinned,name_verified,data._id,data.mimetype_id,is_super_primary,data14 FROM raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id) LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE contact_id=? AND deleted=0"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    iget-wide v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    .line 387
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/aggregation/ContactAggregator;)Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    return-object v0
.end method

.method private declared-synchronized aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 19
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J
    .param p5, "accountId"    # J
    .param p7, "currentContactId"    # J
    .param p9, "candidates"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
    .param p10, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v5, :cond_0

    .line 721
    const-string v5, "ContactAggregator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aggregateContact: rid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " cid="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    const/4 v14, 0x0

    .line 726
    .local v14, "aggregationMode":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 727
    .local v13, "aggModeObject":Ljava/lang/Integer;
    if-eqz v13, :cond_1

    .line 728
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 731
    :cond_1
    const-wide/16 v7, -0x1

    .line 732
    .local v7, "contactId":J
    const-wide/16 v15, -0x1

    .line 734
    .local v15, "contactIdToSplit":J
    if-nez v14, :cond_a

    .line 735
    invoke-virtual/range {p9 .. p9}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->clear()V

    .line 736
    invoke-virtual/range {p10 .. p10}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->clear()V

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v7

    .line 739
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_4

    .line 743
    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p2

    move-wide/from16 v1, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 745
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    .end local v7    # "contactId":J
    move-result-wide v7

    .line 751
    .restart local v7    # "contactId":J
    :cond_3
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-eqz v5, :cond_4

    cmp-long v5, v7, p7

    if-eqz v5, :cond_4

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->canJoinIntoContact(Landroid/database/sqlite/SQLiteDatabase;JJJ)Z

    move-result v5

    if-nez v5, :cond_4

    .line 753
    move-wide v15, v7

    .line 754
    const-wide/16 v7, -0x1

    .line 763
    :cond_4
    const-wide/16 v17, 0x0

    .line 765
    .local v17, "currentContactContentsCount":J
    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_5

    .line 766
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p7

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 767
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 768
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v17

    .line 773
    :cond_5
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_7

    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_7

    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    if-ne v14, v5, :cond_7

    .line 777
    :cond_6
    move-wide/from16 v7, p7

    .line 780
    :cond_7
    cmp-long v5, v7, p7

    if-nez v5, :cond_b

    .line 782
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markAggregated(J)V

    .line 811
    :cond_8
    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v5, v15, v5

    if-eqz v5, :cond_9

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->splitAutomaticallyAggregatedRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .end local v17    # "currentContactContentsCount":J
    :cond_9
    :goto_1
    monitor-exit p0

    return-void

    .line 757
    :cond_a
    const/4 v5, 0x3

    if-ne v14, v5, :cond_4

    goto :goto_1

    .line 783
    .restart local v17    # "currentContactContentsCount":J
    :cond_b
    const-wide/16 v5, -0x1

    cmp-long v5, v7, v5

    if-nez v5, :cond_c

    .line 785
    :try_start_1
    invoke-direct/range {p0 .. p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 786
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-lez v5, :cond_8

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 720
    .end local v7    # "contactId":J
    .end local v13    # "aggModeObject":Ljava/lang/Integer;
    .end local v14    # "aggregationMode":I
    .end local v15    # "contactIdToSplit":J
    .end local v17    # "currentContactContentsCount":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 791
    .restart local v7    # "contactId":J
    .restart local v13    # "aggModeObject":Ljava/lang/Integer;
    .restart local v14    # "aggregationMode":I
    .restart local v15    # "contactIdToSplit":J
    .restart local v17    # "currentContactContentsCount":J
    :cond_c
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-nez v5, :cond_d

    .line 793
    :try_start_2
    move-object/from16 v0, p2

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/database/ContactsTableUtil;->deleteContact(Landroid/database/sqlite/SQLiteDatabase;J)I

    .line 795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p7

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 796
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 799
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 800
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 802
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 804
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 806
    const-wide/16 v5, 0x0

    cmp-long v5, p7, v5

    if-eqz v5, :cond_8

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private canJoinIntoContact(Landroid/database/sqlite/SQLiteDatabase;JJJ)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contactId"    # J
    .param p4, "rawContactId"    # J
    .param p6, "rawContactAccountId"    # J

    .prologue
    .line 834
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 835
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 836
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 837
    const-string v4, "SELECT _id FROM raw_contacts WHERE contact_id=? AND _id!=? AND account_id=?"

    iget-object v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 845
    .local v1, "duplicatesCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 846
    .local v0, "duplicateCount":I
    if-nez v0, :cond_0

    .line 847
    const/4 v4, 0x1

    .line 863
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 941
    :goto_0
    return v4

    .line 849
    :cond_0
    :try_start_1
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_1

    .line 850
    const-string v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canJoinIntoContact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " duplicate(s) found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .local v3, "rawContactIdsBuilder":Ljava/lang/StringBuilder;
    const/4 v4, -0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 856
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 857
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 858
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 863
    .end local v0    # "duplicateCount":I
    .end local v3    # "rawContactIdsBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v0    # "duplicateCount":I
    .restart local v3    # "rawContactIdsBuilder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 867
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "rawContactIds":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 874
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT count(*) FROM data AS d1 JOIN data AS d2 ON (d1.data1 = d2.data1) WHERE d1.mimetype_id = ?1 AND d2.mimetype_id = ?1 AND d1.raw_contact_id = ?2 AND d2.raw_contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 885
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_4

    .line 886
    const-string v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relaxing rule SA: email match found for rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 892
    :cond_5
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdIdentity:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 893
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT count(*) FROM data AS d1 JOIN data AS d2 ON (d1.data1 = d2.data1 AND d1.data2 = d2.data2 ) WHERE d1.mimetype_id = ?1 AND d2.mimetype_id = ?1 AND d1.raw_contact_id = ?2 AND d2.raw_contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 905
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_6

    .line 906
    const-string v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relaxing rule SA: identity match found for rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 914
    :cond_7
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 915
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 916
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT count(*) FROM phone_lookup AS p1 JOIN data AS d1 ON (d1._id=p1.data_id) JOIN phone_lookup AS p2 ON (p1.min_match=p2.min_match) JOIN data AS d2 ON (d2._id=p2.data_id) WHERE d1.mimetype_id = ?1 AND d2.mimetype_id = ?1 AND d1.raw_contact_id = ?2 AND d2.raw_contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND PHONE_NUMBERS_EQUAL(d1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",d2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",?3)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 933
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_8

    .line 934
    const-string v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relaxing rule SA: phone match found for rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 938
    :cond_9
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_a

    .line 939
    const-string v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rule SA splitting up cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contactId"    # J
    .param p4, "statement"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1830
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1831
    return-void
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 35

    .prologue
    .line 1848
    const-wide/16 v6, -0x1

    .line 1849
    const-wide/16 v20, -0x1

    .line 1850
    const-wide/16 v18, 0x0

    .line 1851
    const/16 v17, 0x0

    .line 1852
    const/16 v16, 0x0

    .line 1853
    const/4 v15, -0x1

    .line 1854
    const/4 v3, 0x0

    .line 1855
    const/16 v24, 0x0

    .line 1856
    const/16 v23, 0x0

    .line 1857
    const-wide/16 v13, 0x0

    .line 1858
    const/4 v12, 0x0

    .line 1859
    const/4 v11, 0x0

    .line 1860
    const v10, 0x7fffffff

    .line 1861
    const/16 v22, 0x0

    .line 1862
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1866
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1868
    :goto_0
    :try_start_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1869
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1870
    cmp-long v8, v4, v6

    if-eqz v8, :cond_12

    .line 1872
    add-int/lit8 v29, v3, 0x1

    .line 1875
    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1876
    const/4 v6, 0x5

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1877
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    .line 1882
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1883
    const/4 v3, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1884
    const/16 v3, 0xd

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1885
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccountWithDataSet(Ljava/lang/String;)Z

    move-result v8

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->processDisplayNameCandidate(JLjava/lang/String;IZZ)V

    .line 1890
    const/16 v3, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1891
    const/16 v3, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 1893
    :goto_3
    if-eqz v3, :cond_11

    .line 1894
    add-int/lit8 v24, v24, 0x1

    move/from16 v28, v24

    .line 1898
    :goto_4
    if-nez v23, :cond_10

    const/4 v3, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1900
    const/4 v3, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v27, v23

    .line 1903
    :goto_5
    const/16 v3, 0x9

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1904
    cmp-long v3, v25, v13

    if-lez v3, :cond_f

    .line 1908
    :goto_6
    const/16 v3, 0xa

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1909
    move/from16 v0, v24

    if-le v0, v12, :cond_e

    .line 1913
    :goto_7
    const/16 v3, 0xb

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    .line 1914
    const/16 v23, 0x1

    .line 1919
    :goto_8
    const/16 v3, 0xc

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1920
    if-ltz v3, :cond_c

    .line 1921
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1924
    :goto_9
    const/4 v7, 0x4

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x6

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v30

    move-wide v11, v4

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move v10, v3

    move/from16 v11, v23

    move/from16 v12, v24

    move-wide/from16 v13, v25

    move-object/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move-wide/from16 v26, v4

    .line 1933
    :goto_a
    const/16 v3, 0xe

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1934
    const/16 v3, 0xe

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1935
    const/16 v3, 0x11

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1936
    const/16 v3, 0xf

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1937
    const/16 v3, 0x10

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    .line 1938
    :goto_b
    int-to-long v0, v5

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhoto:J

    move-wide/from16 v33, v0

    cmp-long v3, v28, v33

    if-nez v3, :cond_5

    .line 1939
    if-nez v16, :cond_a

    .line 1943
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;

    move-result-object v5

    .line 1944
    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v3

    .line 1946
    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v3, v1, v15}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->hasHigherPhotoPriority(Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;I)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1952
    :cond_0
    or-int v4, v4, v16

    :goto_c
    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move/from16 v3, v22

    :goto_d
    move/from16 v22, v3

    move-wide/from16 v6, v26

    move/from16 v3, v25

    .line 1959
    goto/16 :goto_0

    :cond_1
    move-object/from16 v30, v3

    .line 1877
    goto/16 :goto_1

    .line 1885
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1891
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1937
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_b

    .line 1955
    :cond_5
    int-to-long v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdPhone:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1956
    const/4 v3, 0x1

    goto :goto_d

    .line 1961
    :cond_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1964
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-wide v5, v5, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1967
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_7

    .line 1968
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1973
    :goto_e
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_8

    .line 1974
    const/4 v4, 0x3

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1979
    :goto_f
    const/4 v5, 0x4

    move/from16 v0, v24

    if-ne v3, v0, :cond_9

    const-wide/16 v3, 0x1

    :goto_10
    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1981
    const/4 v3, 0x5

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1983
    const/4 v3, 0x6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v13, v14}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1985
    const/4 v3, 0x7

    int-to-long v4, v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1987
    const/16 v3, 0x8

    int-to-long v4, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1989
    const/16 v3, 0x9

    int-to-long v4, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1991
    const/16 v3, 0xa

    move/from16 v0, v22

    int-to-long v4, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1993
    const/16 v3, 0xb

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1995
    const/16 v3, 0xc

    invoke-static {}, Lcom/android/providers/contacts/util/Clock;->getInstance()Lcom/android/providers/contacts/util/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1997
    return-void

    .line 1961
    :catchall_0
    move-exception v3

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1970
    :cond_7
    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 1976
    :cond_8
    const/4 v4, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 1979
    :cond_9
    const-wide/16 v3, 0x0

    goto :goto_10

    :cond_a
    move/from16 v3, v22

    goto/16 :goto_d

    :cond_b
    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    goto/16 :goto_c

    :cond_c
    move v3, v10

    goto/16 :goto_9

    :cond_d
    move/from16 v23, v11

    goto/16 :goto_8

    :cond_e
    move/from16 v24, v12

    goto/16 :goto_7

    :cond_f
    move-wide/from16 v25, v13

    goto/16 :goto_6

    :cond_10
    move-object/from16 v27, v23

    goto/16 :goto_5

    :cond_11
    move/from16 v28, v24

    goto/16 :goto_4

    :cond_12
    move/from16 v25, v3

    move-wide/from16 v26, v6

    goto/16 :goto_a
.end method

.method private createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J

    .prologue
    .line 1012
    invoke-direct {p0, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->unpinRawContact(J)V

    .line 1013
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1014
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1016
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1017
    .local v0, "contactId":J
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 1018
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 1019
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->setPresenceContactId(JJ)V

    .line 1020
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 1021
    return-void
.end method

.method private findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2494
    new-instance v8, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    invoke-direct {v8, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator$1;)V

    .line 2495
    new-instance v9, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;-><init>()V

    .line 2498
    invoke-virtual {v9, p2, p3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->keepOut(J)V

    .line 2500
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2501
    :cond_0
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2504
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2505
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v9

    .line 2506
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2510
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2517
    :goto_1
    const/16 v0, 0x32

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2513
    :cond_2
    invoke-direct {p0, p1, v8, v9, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2171
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2174
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxThumbnailDim()I

    move-result v1

    .line 2175
    new-instance v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;

    mul-int/2addr v1, v1

    invoke-direct {v0, p0, v1, v8, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator;IILcom/android/providers/contacts/aggregation/ContactAggregator$1;)V

    .line 2190
    :goto_0
    return-object v0

    .line 2177
    :cond_0
    const-string v1, "photo_files"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoFileQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2180
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 2181
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2182
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    mul-int/2addr v2, v0

    .line 2184
    new-instance v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator;IILcom/android/providers/contacts/aggregation/ContactAggregator$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2190
    new-instance v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;

    invoke-direct {v0, p0, v8, v8, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator;IILcom/android/providers/contacts/aggregation/ContactAggregator$1;)V

    goto :goto_0

    .line 2187
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hasHigherPhotoPriority(Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;I)Z
    .locals 2
    .param p1, "photoEntry"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;
    .param p2, "priority"    # I
    .param p3, "bestPhotoEntry"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;
    .param p4, "bestPriority"    # I

    .prologue
    .line 1839
    invoke-virtual {p1, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;->compareTo(Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;)I

    move-result v0

    .line 1840
    .local v0, "photoComparison":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 946
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 948
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 950
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Z)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "candidates"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
    .param p5, "structuredNameBased"    # Z

    .prologue
    .line 1331
    invoke-virtual {p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->clear()V

    .line 1332
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1333
    const-string v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v3, "raw_contact_id=? AND name_type IN (0,1,2)"

    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1339
    .local v8, "c":Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1341
    .local v9, "normalizedName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1342
    .local v10, "type":I
    invoke-virtual {p4, v9, v10}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1345
    .end local v9    # "normalizedName":Ljava/lang/String;
    .end local v10    # "type":I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1333
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v3, "raw_contact_id=?"

    goto :goto_0

    .line 1345
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1347
    return-void
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 1650
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v7, v8

    .line 1651
    :goto_0
    # getter for: Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static {p2}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1652
    # getter for: Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;

    .line 1653
    iget-object v1, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 1654
    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1655
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1656
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(normalized_name GLOB \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1664
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;ILjava/lang/String;)V

    .line 1651
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    .line 1670
    :cond_1
    return-void
.end method

.method private markAggregated(J)V
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1099
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1100
    return-void
.end method

.method private markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 562
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 563
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 567
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 569
    .local v10, "rawContactId":J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 573
    .local v8, "aggregationMode":I
    if-nez v8, :cond_0

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p0, v10, v11, v8, v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markForAggregation(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    .end local v8    # "aggregationMode":I
    .end local v10    # "rawContactId":J
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 580
    return-void

    .line 578
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 1692
    const-string v1, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1696
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1698
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1699
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1704
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    # getter for: Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static {p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1705
    # getter for: Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static {p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;

    .line 1706
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mLookupType:I

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object v0, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1711
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1713
    return-void

    .line 1711
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "candidates"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
    .param p5, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v2, -0x1

    .line 1263
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v0

    .line 1264
    .local v0, "bestMatch":J
    cmp-long v4, v0, v5

    if-nez v4, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return-wide v2

    .line 1267
    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 1269
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J

    move-result-wide v0

    .line 1270
    cmp-long v4, v0, v5

    if-eqz v4, :cond_0

    :cond_2
    move-wide v2, v0

    .line 1275
    goto :goto_0
.end method

.method private pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIdsValid:Z

    if-nez v2, :cond_0

    .line 1199
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1204
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1205
    const-wide/16 v2, -0x1

    .line 1242
    :goto_0
    return-wide v2

    .line 1208
    :cond_1
    const-string v3, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    sget-object v4, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id1="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1215
    .local v10, "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1216
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1217
    .local v15, "type":I
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1218
    .local v13, "rawContactId1":J
    const-wide/16 v11, -0x1

    .line 1219
    .local v11, "contactId":J
    cmp-long v2, p2, v13

    if-nez v2, :cond_4

    .line 1220
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1222
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1230
    :cond_3
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_2

    .line 1231
    const/4 v2, 0x1

    if-ne v15, v2, :cond_5

    .line 1232
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1239
    .end local v11    # "contactId":J
    .end local v13    # "rawContactId1":J
    .end local v15    # "type":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1225
    .restart local v11    # "contactId":J
    .restart local v13    # "rawContactId1":J
    .restart local v15    # "type":I
    :cond_4
    const/4 v2, 0x3

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1227
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    goto :goto_2

    .line 1234
    :cond_5
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->keepOut(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1239
    .end local v11    # "contactId":J
    .end local v13    # "rawContactId1":J
    .end local v15    # "type":I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1242
    const/16 v2, 0x64

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v2

    goto/16 :goto_0
.end method

.method private pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "candidates"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
    .param p5, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1286
    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->prepareSecondaryMatchCandidates(I)Ljava/util/List;

    move-result-object v8

    .line 1288
    .local v8, "secondaryContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 1289
    :cond_0
    const-wide/16 v0, -0x1

    .line 1310
    :goto_0
    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1292
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Z)V

    .line 1294
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1297
    if-eqz v7, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1296
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1305
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;ILjava/lang/String;)V

    .line 1310
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v9}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1149
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1150
    const-string v1, "agg_exceptions"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1155
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1157
    .local v9, "rawContactId1":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1158
    .local v11, "rawContactId2":J
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1159
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1162
    .end local v9    # "rawContactId1":J
    .end local v11    # "rawContactId2":J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1165
    iput-boolean v13, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 1166
    return-void
.end method

.method private processDisplayNameCandidate(JLjava/lang/String;IZZ)V
    .locals 5
    .param p1, "rawContactId"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "displayNameSource"    # I
    .param p5, "writableAccount"    # Z
    .param p6, "verified"    # Z

    .prologue
    .line 2016
    const/4 v0, 0x0

    .line 2017
    .local v0, "replace":Z
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2019
    const/4 v0, 0x1

    .line 2042
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2043
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iput-wide p1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 2044
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iput-object p3, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 2045
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iput p4, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 2046
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 2047
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iput-boolean p5, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 2049
    :cond_1
    return-void

    .line 2020
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2021
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-nez v1, :cond_3

    if-eqz p6, :cond_3

    .line 2023
    const/4 v0, 0x1

    goto :goto_0

    .line 2024
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-ne v1, p6, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ge v1, p4, :cond_4

    .line 2027
    const/4 v0, 0x1

    goto :goto_0

    .line 2028
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ne v1, p4, :cond_0

    .line 2029
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-nez v1, :cond_5

    if-eqz p5, :cond_5

    .line 2030
    const/4 v0, 0x1

    goto :goto_0

    .line 2031
    :cond_5
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-boolean v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-ne v1, p5, :cond_0

    .line 2032
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-object v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/android/providers/contacts/NameNormalizer;->compareComplexity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2035
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 2406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2407
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    const-string v1, " IN ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 2410
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 2411
    if-eqz v2, :cond_0

    .line 2412
    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2409
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2416
    :cond_1
    const-string v1, ")"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2419
    const-string v1, " AND _id IN "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, p6

    invoke-virtual {v1, v9, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2424
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/providers/contacts/aggregation/ContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2428
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2429
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2432
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2436
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2437
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v3

    .line 2439
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2440
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2446
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p5

    if-le v1, v0, :cond_6

    .line 2447
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    .line 2453
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2454
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    const-string v1, " IN ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 2457
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 2458
    if-eqz v2, :cond_7

    .line 2459
    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    :cond_7
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2456
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 2463
    :cond_8
    const-string v1, ")"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2469
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2470
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 2471
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2474
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2477
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 2478
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    array-length v1, v5

    if-ge v2, v1, :cond_a

    .line 2479
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v6

    .line 2480
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v5, v2

    .line 2478
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 2483
    :cond_a
    new-instance v1, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    invoke-direct {v1, v3, v5}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v1
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "contactId"    # J

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1107
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1108
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1109
    return-void
.end method

.method private setPresenceContactId(JJ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "contactId"    # J

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1113
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1114
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1115
    return-void
.end method

.method private splitAutomaticallyAggregatedRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "contactId"    # J

    .prologue
    const/4 v8, 0x0

    .line 960
    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 961
    const-string v6, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 965
    .local v0, "count":I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    const-string v3, "SELECT _id FROM raw_contacts WHERE contact_id=?   AND _id NOT IN (SELECT raw_contact_id1 FROM agg_exceptions WHERE type=1 UNION SELECT raw_contact_id2 FROM agg_exceptions WHERE type=1)"

    .line 987
    .local v3, "query":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 990
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_2

    .line 991
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 998
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1000
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_0

    .line 1001
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 994
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 995
    .local v4, "rawContactId":J
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 998
    .end local v4    # "rawContactId":J
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private unpinRawContact(J)V
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mResetPinnedForRawContact:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1119
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mResetPinnedForRawContact:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1120
    return-void
.end method

.method private updateAggregatedStatusUpdate(J)V
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 698
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 699
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateLastStatusUpdateId(J)V

    .line 701
    return-void
.end method

.method private updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contactId"    # J

    .prologue
    const/4 v3, 0x1

    .line 2317
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2319
    .local v0, "lookupKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2320
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2324
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2326
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2327
    return-void

    .line 2322
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    const-wide/16 v2, -0x1

    .line 1355
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1356
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1357
    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    .line 1358
    .local v0, "bestMatch":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1365
    .end local v0    # "bestMatch":J
    :goto_0
    return-wide v0

    .line 1362
    .restart local v0    # "bestMatch":J
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1363
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    move-wide v0, v2

    .line 1365
    goto :goto_0
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1586
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1587
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1588
    const-string v1, "data dataA JOIN data dataB ON (dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=?1 AND dataA.mimetype_id=?2 AND dataA.data1 NOT NULL AND dataB.mimetype_id=?2 AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1592
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1594
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithEmailMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1597
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1599
    return-void
.end method

.method private updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1397
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1398
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMimeTypeIdIdentity:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1399
    const-string v1, "data dataA JOIN data dataB ON (dataA.data2=dataB.data2 AND dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$IdentityLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=?1 AND dataA.mimetype_id=?2 AND dataA.data2 NOT NULL AND dataA.data1 NOT NULL AND dataB.mimetype_id=?2 AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const-string v5, "contact_id"

    move-object v0, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1403
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1405
    .local v9, "contactId":J
    invoke-virtual {p4, v9, v10}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1408
    .end local v9    # "contactId":J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1411
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 1444
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 1445
    const-string v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "nameA.raw_contact_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1449
    .local v9, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1451
    .local v1, "contactId":J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1452
    .local v4, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1453
    .local v3, "nameTypeA":I
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1454
    .local v5, "nameTypeB":I
    const/4 v7, 0x0

    move-object v0, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1456
    if-ne v3, v10, :cond_0

    if-ne v5, v10, :cond_0

    .line 1458
    invoke-virtual {p4, v1, v2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1462
    .end local v1    # "contactId":J
    .end local v3    # "nameTypeA":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameTypeB":I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1464
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 10

    .prologue
    .line 1534
    invoke-virtual {p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;->clear()V

    .line 1535
    new-instance v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;)V

    .line 1537
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 1538
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1542
    :cond_0
    const-string v2, "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"

    sget-object v3, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/providers/contacts/aggregation/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1546
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1547
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1548
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1549
    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator$NameLookupSelectionBuilder;->getLookupType(Ljava/lang/String;)I

    move-result v4

    .line 1550
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1551
    const/4 v8, 0x0

    move-object v1, p4

    move-object v7, v5

    invoke-virtual/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1553
    const/4 v1, 0x3

    if-ne v4, v1, :cond_1

    const/4 v1, 0x3

    if-ne v6, v1, :cond_1

    .line 1554
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1558
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1629
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1630
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1631
    const-string v1, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/aggregation/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1635
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1637
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithPhoneNumberMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1640
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1642
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "candidates"    # Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
    .param p5, "matcher"    # Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    .prologue
    .line 2526
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 2527
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 2528
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 2529
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 2530
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Z)V

    .line 2531
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 2532
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;",
            "Lcom/android/providers/contacts/aggregation/util/ContactMatcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2537
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;

    .line 2538
    const-string v2, "name"

    iget-object v3, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2539
    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    goto :goto_0

    .line 2544
    :cond_1
    return-void
.end method


# virtual methods
.method public aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 17
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J

    .prologue
    .line 656
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 680
    :goto_0
    return-void

    .line 660
    :cond_0
    new-instance v10, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/aggregation/ContactAggregator$1;)V

    .line 661
    .local v10, "candidates":Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;
    new-instance v11, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-direct {v11}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;-><init>()V

    .line 663
    .local v11, "matcher":Lcom/android/providers/contacts/aggregation/util/ContactMatcher;
    const-wide/16 v14, 0x0

    .line 664
    .local v14, "contactId":J
    const-wide/16 v12, 0x0

    .line 665
    .local v12, "accountId":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 666
    const-string v2, "raw_contacts"

    sget-object v3, Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "_id=?"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 670
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 672
    .end local v14    # "contactId":J
    .local v8, "contactId":J
    const/4 v1, 0x1

    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 675
    .end local v12    # "accountId":J
    .local v6, "accountId":J
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    .line 678
    invoke-direct/range {v1 .. v11}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    goto :goto_0

    .line 675
    .end local v6    # "accountId":J
    .end local v8    # "contactId":J
    .restart local v12    # "accountId":J
    .restart local v14    # "contactId":J
    :catchall_0
    move-exception v1

    move-wide v8, v14

    .end local v14    # "contactId":J
    .restart local v8    # "contactId":J
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    .end local v8    # "contactId":J
    .restart local v14    # "contactId":J
    :cond_1
    move-wide v6, v12

    .end local v12    # "accountId":J
    .restart local v6    # "accountId":J
    move-wide v8, v14

    .end local v14    # "contactId":J
    .restart local v8    # "contactId":J
    goto :goto_1
.end method

.method public aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 30
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v23

    .line 415
    .local v23, "markedCount":I
    if-nez v23, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 420
    .local v28, "start":J
    sget-boolean v3, Lcom/android/providers/contacts/aggregation/ContactAggregator;->DEBUG_LOGGING:Z

    if-eqz v3, :cond_2

    .line 421
    const-string v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aggregateInTransaction for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move/from16 v0, v23

    neg-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 426
    const/16 v22, 0x0

    .line 433
    .local v22, "index":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v27, "sbQuery":Ljava/lang/StringBuilder;
    const-string v3, "SELECT _id,contact_id, account_id FROM raw_contacts WHERE _id IN("

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 436
    .local v24, "rawContactId":J
    if-lez v22, :cond_3

    .line 437
    const/16 v3, 0x2c

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    :cond_3
    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 443
    .end local v24    # "rawContactId":J
    :cond_4
    const/16 v3, 0x29

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 451
    .local v16, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 452
    .local v15, "actualCount":I
    new-array v0, v15, [J

    move-object/from16 v26, v0

    .line 453
    .local v26, "rawContactIds":[J
    new-array v0, v15, [J

    move-object/from16 v17, v0

    .line 454
    .local v17, "contactIds":[J
    new-array v14, v15, [J

    .line 456
    .local v14, "accountIds":[J
    const/16 v22, 0x0

    .line 457
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 458
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v26, v22

    .line 459
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v17, v22

    .line 460
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v14, v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 464
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 467
    sget-boolean v3, Lcom/android/providers/contacts/aggregation/ContactAggregator;->DEBUG_LOGGING:Z

    if-eqz v3, :cond_6

    .line 468
    const-string v3, "ContactAggregator"

    const-string v4, "aggregateInTransaction: initial query done."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_6
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v15, :cond_7

    .line 472
    aget-wide v6, v26, v20

    aget-wide v8, v14, v20

    aget-wide v10, v17, v20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v13}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 471
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 464
    .end local v14    # "accountIds":[J
    .end local v15    # "actualCount":I
    .end local v17    # "contactIds":[J
    .end local v20    # "i":I
    .end local v26    # "rawContactIds":[J
    :catchall_0
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 476
    .restart local v14    # "accountIds":[J
    .restart local v15    # "actualCount":I
    .restart local v17    # "contactIds":[J
    .restart local v20    # "i":I
    .restart local v26    # "rawContactIds":[J
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v18, v3, v28

    .line 477
    .local v18, "elapsedTime":J
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 479
    sget-boolean v3, Lcom/android/providers/contacts/aggregation/ContactAggregator;->DEBUG_LOGGING:Z

    if-eqz v3, :cond_0

    .line 480
    const-string v4, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact aggregation complete: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v15, :cond_8

    const-string v3, ""

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v6, v15

    div-long v6, v18, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms per raw contact"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method protected appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "accountTypeWithDataSet"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "rawContactId"    # J
    .param p6, "sourceId"    # Ljava/lang/String;
    .param p7, "displayName"    # Ljava/lang/String;

    .prologue
    .line 2004
    invoke-static/range {p1 .. p7}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2006
    return-void
.end method

.method public clearPendingAggregations()V
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    .line 522
    return-void
.end method

.method protected computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 2330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2331
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2332
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2335
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2344
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2346
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 636
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 637
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateAggregationExceptionCache()V
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 1140
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mEnabled:Z

    return v0
.end method

.method public markAllVisibleForAggregation(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 594
    .local v6, "start":J
    const-string v8, "UPDATE raw_contacts SET aggregation_needed=1 WHERE contact_id IN default_directory AND aggregation_mode=0"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 601
    const-string v8, "SELECT _id FROM raw_contacts WHERE aggregation_needed=1"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 605
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 606
    .local v0, "count":I
    const/4 v8, -0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 607
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 608
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 609
    .local v4, "rawContactId":J
    iget-object v8, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 613
    .end local v0    # "count":I
    .end local v4    # "rawContactId":J
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v0    # "count":I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 617
    .local v2, "end":J
    const-string v8, "ContactAggregator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Marked all visible contacts for aggregation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " raw contacts, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v0
.end method

.method public markForAggregation(JIZ)V
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "aggregationMode"    # I
    .param p4, "force"    # Z

    .prologue
    .line 530
    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    if-nez p3, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 544
    .local v0, "effectiveAggregationMode":I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void

    .line 536
    .end local v0    # "effectiveAggregationMode":I
    :cond_0
    move v0, p3

    .restart local v0    # "effectiveAggregationMode":I
    goto :goto_0

    .line 539
    .end local v0    # "effectiveAggregationMode":I
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 540
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 541
    move v0, p3

    .restart local v0    # "effectiveAggregationMode":I
    goto :goto_0
.end method

.method public markNewForAggregation(JI)V
    .locals 3
    .param p1, "rawContactId"    # J
    .param p3, "aggregationMode"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method

.method public onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J

    .prologue
    .line 628
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 629
    .local v0, "contactId":J
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->setContactId(JJ)V

    .line 630
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 631
    return-wide v0
.end method

.method public queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 7
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "contactId"    # J
    .param p5, "maxSuggestions"    # I
    .param p6, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 2382
    .local p7, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/aggregation/ContactAggregator$AggregationSuggestionParameter;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2383
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2385
    :try_start_0
    invoke-direct {p0, v2, p3, p4, p7}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    .local v4, "bestMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    .line 2386
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2388
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    .end local v4    # "bestMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected setContactId(JJ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "contactId"    # J

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1090
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1091
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1092
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mEnabled:Z

    .line 391
    return-void
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 5
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "rawContactId"    # J

    .prologue
    .line 488
    iget-boolean v3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mEnabled:Z

    if-nez v3, :cond_1

    .line 516
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 492
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAggregationMode(J)I

    move-result v0

    .line 493
    .local v0, "aggregationMode":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 498
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {p0, p2, p3, v0, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markForAggregation(JIZ)V

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v1

    .line 505
    .local v1, "contactId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 512
    .end local v1    # "contactId":J
    :pswitch_3
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 3
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "contactId"    # J

    .prologue
    .line 683
    iget-boolean v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 688
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 689
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 690
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 692
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 693
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    goto :goto_0
.end method

.method public updateAggregationAfterVisibilityChange(J)V
    .locals 18
    .param p1, "contactId"    # J

    .prologue
    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1048
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v17

    .line 1049
    .local v17, "visible":Z
    if-eqz v17, :cond_0

    .line 1050
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1083
    :goto_0
    return-void

    .line 1054
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1055
    const-string v4, "raw_contacts"

    sget-object v5, Lcom/android/providers/contacts/aggregation/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1058
    .local v12, "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1059
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1060
    .local v15, "rawContactId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-virtual {v4}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->clear()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v11

    .line 1066
    .local v11, "bestMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 1067
    .local v14, "matchScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-virtual {v14}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1080
    .end local v11    # "bestMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "matchScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    .end local v15    # "rawContactId":J
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1070
    .restart local v11    # "bestMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "rawContactId":J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    invoke-virtual {v4}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->clear()V

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/util/ContactMatcher;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/aggregation/util/ContactMatcher;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v11

    .line 1075
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;

    .line 1076
    .restart local v14    # "matchScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    invoke-virtual {v14}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1080
    .end local v11    # "bestMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "matchScore":Lcom/android/providers/contacts/aggregation/util/ContactMatcher$MatchScore;
    .end local v15    # "rawContactId":J
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2221
    .line 2223
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 2225
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 2226
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move v7, v9

    .line 2229
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2231
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2232
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2233
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2234
    const/4 v5, 0x5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2236
    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccountWithDataSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v0, :cond_0

    move v6, v8

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->processDisplayNameCandidate(JLjava/lang/String;IZZ)V

    .line 2242
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v0, v7

    move v7, v0

    .line 2243
    goto :goto_0

    :cond_0
    move v6, v9

    .line 2236
    goto :goto_1

    .line 2245
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2248
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-wide v0, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2249
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/aggregation/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    invoke-virtual {v0, v8, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2250
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v11, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2251
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2254
    :cond_2
    if-eqz v7, :cond_3

    .line 2255
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2257
    :cond_3
    return-void

    .line 2245
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 2212
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 2213
    .local v0, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2218
    :goto_0
    return-void

    .line 2217
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 2267
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2288
    :goto_0
    return-void

    .line 2271
    :cond_0
    const-string v2, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2281
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2282
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2283
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2284
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method public updateLastStatusUpdateId(J)V
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 707
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "contactIdString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 2308
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 2309
    .local v0, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2314
    :goto_0
    return-void

    .line 2313
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19

    .prologue
    .line 2067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v15

    .line 2068
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-nez v2, :cond_0

    .line 2131
    :goto_0
    return-void

    .line 2072
    :cond_0
    const-wide/16 v13, -0x1

    .line 2073
    const-wide/16 v11, 0x0

    .line 2074
    const/4 v10, -0x1

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id) JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NOT NULL))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2088
    sget-object v4, Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2091
    const/4 v2, 0x0

    move v4, v10

    move-wide v6, v11

    move-wide v10, v13

    .line 2092
    :goto_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2093
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2094
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2095
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v14, v3

    .line 2096
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;

    move-result-object v3

    .line 2100
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v5

    .line 2102
    if-nez v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v2, v4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->hasHigherPhotoPriority(Lcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/aggregation/ContactAggregator$PhotoEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_6

    .line 2108
    :cond_1
    if-eqz v14, :cond_3

    .line 2114
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2117
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_4

    .line 2118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2123
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_5

    .line 2124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2129
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    move-wide v0, v15

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2095
    :cond_2
    const/4 v3, 0x0

    move v14, v3

    goto :goto_2

    :cond_3
    move-object v2, v3

    move-wide v6, v12

    move v3, v5

    move-wide v4, v8

    :goto_6
    move-wide v10, v6

    move-wide v6, v4

    move v4, v3

    .line 2112
    goto/16 :goto_1

    .line 2114
    :catchall_0
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2120
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    .line 2126
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_5

    :cond_6
    move v3, v4

    move-wide v4, v6

    move-wide v6, v10

    goto :goto_6

    :cond_7
    move-wide v8, v6

    move-wide v12, v10

    goto :goto_3
.end method

.method public updatePinned(J)V
    .locals 4
    .param p1, "rawContactId"    # J

    .prologue
    .line 2368
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 2369
    .local v0, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2374
    :goto_0
    return-void

    .line 2372
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2373
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateStarred(J)V
    .locals 4
    .param p1, "rawContactId"    # J

    .prologue
    .line 2354
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 2355
    .local v0, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2359
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2360
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method
