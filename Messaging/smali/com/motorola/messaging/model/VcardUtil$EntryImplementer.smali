.class public Lcom/motorola/messaging/model/VcardUtil$EntryImplementer;
.super Ljava/lang/Object;
.source "VcardUtil.java"

# interfaces
.implements Lcom/motorola/messaging/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/VcardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryImplementer"
.end annotation


# instance fields
.field private mContactStruct:Lcom/motorola/messaging/vcard/VCardEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/model/VcardUtil$EntryImplementer;)Lcom/motorola/messaging/vcard/VCardEntry;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/model/VcardUtil$EntryImplementer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/messaging/model/VcardUtil$EntryImplementer;->mContactStruct:Lcom/motorola/messaging/vcard/VCardEntry;

    return-object v0
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onEntryCreated(Lcom/motorola/messaging/vcard/VCardEntry;)V
    .locals 0
    .param p1, "contactStruct"    # Lcom/motorola/messaging/vcard/VCardEntry;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/messaging/model/VcardUtil$EntryImplementer;->mContactStruct:Lcom/motorola/messaging/vcard/VCardEntry;

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
