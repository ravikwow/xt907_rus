.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$SocialNetworkStatus;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"

# interfaces
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$BaseCommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocialNetworkStatus"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/blur_social_network_status"

.field public static final EXTERNAL_ID:Ljava/lang/String; = "data7"

.field public static final INFORMATION_SOURCE:Ljava/lang/String; = "data7"

.field public static final INFORMATION_SOURCE_BLUR_DEVICE:I = 0x2

.field public static final INFORMATION_SOURCE_BLUR_SERVICE:I = 0x1

.field public static final MOOD_ID:Ljava/lang/String; = "data6"

.field public static final MOOD_PICNAME:Ljava/lang/String; = "data5"

.field public static final OTHER_STATUS:Ljava/lang/String; = "data4"

.field public static final PROVIDER_ID:Ljava/lang/String; = "data1"

.field public static final STATUS:Ljava/lang/String; = "data2"

.field public static final STATUS_TIME:Ljava/lang/String; = "data3"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    return-void
.end method
