.class public final Lcom/motorola/blur/setup/SetupUtility$PrivacyProfileTagBlacklist;
.super Ljava/lang/Object;
.source "SetupUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SetupUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivacyProfileTagBlacklist"
.end annotation


# static fields
.field public static final ADVANCED_BLACKLIST:Ljava/lang/String; = ""

.field public static final NONE_BLACKLIST:Ljava/lang/String; = "BLUR_APP_STATS,MOT_APP_STATS,MOT_BRW_STATS_L1,MOT_BRW_STATS_L2,MOT_BRW_STATS_L3,MOT_CA_LOC,MOT_CA_STATS_L1,MOT_CA_STATS_L2,MOT_CA_STATS_L3,MOT_CA_STATS_L4,MOT_CA_STATS_L5,MOT_CA_STATS_L6,MOT_CALL_STATS_L1,MOT_CALL_STATS_L2,MOT_CONTACT_STATS_L2,MOT_CONTACTS_STATS_L2,MOT_DEVICE_ACCUM_STATS,MOT_DEVICE_KPI_L1,MOT_DEVICE_KPI_L2,MOT_DEVICE_KPI_L3,MOT_DEVICE_STATS,MOT_DEVICE_STATS_KBD,MOT_DEVICE_STATS_L1,MOT_DEVICE_STATS_L2,MOT_DEVICE_STATS_L3,MOT_DEVICE_STATS_MM,MOT_DEVICE_STATS_PERF,MOT_HOME_STATS_L1,MOT_HOME_STATS_L2,MOT_KPI_STATS_L1,MOT_MEDIA_STATS_L1,MOT_MEDIA_STATS_L2,MOT_MEDIA_STATS_L3,MOT_MEDIA_STATS_L4,MOT_MSG_STATS_L1,MOT_MSG_STATS_L2,MOT_MSG_STATS_L3,MOT_MSG_STATS_L4,MOT_DEVICE_STATS_CAM,CALL_PERF_STATS,CALL_PERF_DEVICE_LOC,CALL_PERF_HO_SUCCESS,CALL_PERF_STATS_SUCCESS,CALL_PERF_DATA_STATS,HO_STAT,BLUR_APP_USAGE,BROWSER_TIME_LANDSCAPE,BROWSER_TIME_PORTRAIT,BT_PAIRING_S,BT_PAIRING_F,BT_HFP_S,BT_HFP_F,BT_A2DP_S,BT_A2DP_F,BT_HID_S,BT_HID_F,BT_PBAP_S,BT_PBAP_F,BT_PAN_S,BT_PAN_F,MOT_DEVICE_STATS_BAT"

.field public static final STANDARD_BLACKLIST:Ljava/lang/String; = "MOT_CA_LOC,CALL_PERF_DEVICE_LOC,HO_STAT"

.field public static final SUPPORT_BLACKLIST:Ljava/lang/String; = "BLUR_APP_STATS,MOT_APP_STATS,MOT_CA_LOC,MOT_CONTACT_STATS_L2,MOT_CONTACTS_STATS_L2,MOT_DEVICE_ACCUM_STATS,MOT_DEVICE_KPI_L1,MOT_DEVICE_KPI_L2,MOT_DEVICE_KPI_L3,MOT_DEVICE_STATS_MM,MOT_HOME_STATS_L1,MOT_HOME_STATS_L2,MOT_KPI_STATS_L1,MOT_DEVICE_STATS_CAM,CALL_PERF_DEVICE_LOC,HO_STAT,BLUR_APP_USAGE,BROWSER_TIME_LANDSCAPE,BROWSER_TIME_PORTRAIT,BT_PAIRING_S,BT_PAIRING_F,BT_HFP_S,BT_HFP_F,BT_A2DP_S,BT_A2DP_F,BT_HID_S,BT_HID_F,BT_PBAP_S,BT_PBAP_F,BT_PAN_S,BT_PAN_F"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
