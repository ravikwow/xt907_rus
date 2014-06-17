.class public Lcom/android/mms/model/VcardUtil$EntryImplementer;
.super Ljava/lang/Object;
.source "VcardUtil.java"

# interfaces
.implements Lcom/android/mms/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/model/VcardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryImplementer"
.end annotation


# instance fields
.field private mContactStruct:Lcom/android/mms/vcard/VCardEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/model/VcardUtil$EntryImplementer;)Lcom/android/mms/vcard/VCardEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/model/VcardUtil$EntryImplementer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/model/VcardUtil$EntryImplementer;->mContactStruct:Lcom/android/mms/vcard/VCardEntry;

    return-object v0
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onEntryCreated(Lcom/android/mms/vcard/VCardEntry;)V
    .locals 0
    .param p1, "contactStruct"    # Lcom/android/mms/vcard/VCardEntry;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/mms/model/VcardUtil$EntryImplementer;->mContactStruct:Lcom/android/mms/vcard/VCardEntry;

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
