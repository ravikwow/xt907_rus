.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$PhoneCommunicationHistory;
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
    name = "PhoneCommunicationHistory"
.end annotation


# static fields
.field public static final CALLLOG_ID:Ljava/lang/String; = "data5"

.field public static final COMMUNICATION_TYPE:I = 0x4

.field public static final KIND_INCOMING:I = 0x1

.field public static final KIND_MISSED:I = 0x3

.field public static final KIND_OUTGOING:I = 0x2

.field public static final PHONE_COMMUNICATION_KIND:Ljava/lang/String; = "data8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    return-void
.end method
