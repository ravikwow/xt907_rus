.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$VVMCommunicationHistory;
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
    name = "VVMCommunicationHistory"
.end annotation


# static fields
.field public static final COMMUNICATION_TYPE:I = 0x7

.field public static final VVM_ID:Ljava/lang/String; = "data6"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    return-void
.end method
