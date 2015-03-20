.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$MMSCommunicationHistory;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"

# interfaces
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$BaseCommonColumns;
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$CommunicationHistoryColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MMSCommunicationHistory"
.end annotation


# static fields
.field public static final COMMUNICATION_TYPE:I = 0x3

.field public static final DIRECTION:Ljava/lang/String; = "data9"

.field public static final DIRECTION_IN:I = 0x1

.field public static final DIRECTION_OUT:I = 0x2

.field public static final DIRECTION_UNKNOWN:I = 0x0

.field public static final MMS_COMMUNICATION_TYPE:Ljava/lang/String; = "data8"

.field public static final MMS_ID:Ljava/lang/String; = "data6"

.field public static final MMS_THREAD_ID:Ljava/lang/String; = "data5"

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_PHONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    return-void
.end method
