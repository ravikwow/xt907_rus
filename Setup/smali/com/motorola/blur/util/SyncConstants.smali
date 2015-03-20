.class public Lcom/motorola/blur/util/SyncConstants;
.super Ljava/lang/Object;
.source "SyncConstants.java"


# static fields
.field public static final ACTION_COMPLETED:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_COMPLETED"

.field public static final ACTION_FAILED:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_FAILED"

.field public static final ACTION_LOCAL_CHANGE:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.LOCAL_CHANGE"

.field public static final EXTRA_PARTIAL_DATA_ONLY:Ljava/lang/String; = "com.motorola.blur.service.blur.Extra.PARTIAL_DATA_ONLY"

.field public static final PREFIX_ADMIN_FEED:Ljava/lang/String; = "admin_feed/"

.field public static final PREFIX_CLIENT_SETTINGS:Ljava/lang/String; = "clientsettings/"

.field public static final PREFIX_CONTACTS:Ljava/lang/String; = "contacts/"

.field public static final PREFIX_FRIENDS:Ljava/lang/String; = "sn_friends/"

.field public static final PREFIX_FRIEND_FEED:Ljava/lang/String; = "friend_feed/"

.field public static final PREFIX_NEWS:Ljava/lang/String; = "news/"

.field public static final PREFIX_PODCASTS:Ljava/lang/String; = "podcasts/"

.field public static final PREFIX_SERVER_SETTINGS:Ljava/lang/String; = "serversettings/"

.field public static final PREFIX_SN_COMMENTS:Ljava/lang/String; = "sn_comments/"

.field public static final PREFIX_SN_MAIL:Ljava/lang/String; = "sn_messaging/"

.field public static final PREFIX_STATUS:Ljava/lang/String; = "status/"

.field public static final PREFIX_STATUS_ACKS:Ljava/lang/String; = "status_anchors/"

.field public static final PREF_FILE_SYNC_APP:Ljava/lang/String; = "com.motorola.blur.sync.app.prefs"

.field public static final PREF_KEY_PREFIX_PROHIBIT_BATCHING:Ljava/lang/String; = "com.motorola.blur.sync.app.SharedPrefs.PROHIBIT_BATCHING_"

.field public static final SUFFIX_BLUR:Ljava/lang/String; = "blur"

.field public static final SYNC_ID_ADMIN_FEED:I = 0x3c

.field public static final SYNC_ID_CLIENT_SETTINGS:I = 0x5

.field public static final SYNC_ID_CONTACTS:I = 0xa

.field public static final SYNC_ID_FRIENDS:I = 0x28

.field public static final SYNC_ID_FRIEND_FEED:I = 0x46

.field public static final SYNC_ID_NEWS:I = 0x32

.field public static final SYNC_ID_PODCAST:I = 0x33

.field public static final SYNC_ID_SERVER_SETTINGS:I = 0x2

.field public static final SYNC_ID_SN_COMMENTS:I = 0x50

.field public static final SYNC_ID_SN_MAIL:I = 0x14

.field public static final SYNC_ID_STATUS:I = 0x1e

.field public static final SYNC_ID_STATUS_ACKS:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
