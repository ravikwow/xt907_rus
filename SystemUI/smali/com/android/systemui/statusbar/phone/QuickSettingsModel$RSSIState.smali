.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RSSIState"
.end annotation


# instance fields
.field enabled:Z

.field enabled_2:Z

.field mobileDataActivityContentDescription:Ljava/lang/String;

.field mobileDataActivityContentDescription_2:Ljava/lang/String;

.field mobileDataActivityIconId:I

.field mobileDataActivityIconId_2:I

.field mobileDataTypeContentDescription:Ljava/lang/String;

.field mobileDataTypeContentDescription_2:Ljava/lang/String;

.field mobileDataTypeIconId:I

.field mobileDataTypeIconId_2:I

.field mobileNetworkName:Ljava/lang/String;

.field mobileNetworkName_2:Ljava/lang/String;

.field mobileNumSubscriptions:I

.field mobileRoamingContentDescription:Ljava/lang/String;

.field mobileRoamingContentDescription_2:Ljava/lang/String;

.field mobileRoamingIconId:I

.field mobileRoamingIconId_2:I

.field mobileSignalContentDescription:Ljava/lang/String;

.field mobileSignalContentDescription_2:Ljava/lang/String;

.field mobileSignalIconId:I

.field mobileSignalIconId_2:I

.field mobileSimStatusContentDescription:Ljava/lang/String;

.field mobileSimStatusContentDescription_2:Ljava/lang/String;

.field mobileSimStatusIconId:I

.field mobileSimStatusIconId_2:I

.field mobileSlotLabel:Ljava/lang/String;

.field mobileSlotLabelContentDescription:Ljava/lang/String;

.field mobileSlotLabelContentDescription_2:Ljava/lang/String;

.field mobileSlotLabel_2:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileNumSubscriptions:I

    return-void
.end method
