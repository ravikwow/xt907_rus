.class final Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactInfo"
.end annotation


# instance fields
.field public contactId:J

.field public label:Ljava/lang/String;

.field public lookupKey:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public photoId:J

.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

.field public type:I


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 899
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-wide v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 904
    iput-wide v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->contactId:J

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->lookupKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p2, "x1"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;

    .prologue
    .line 899
    invoke-direct {p0, p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V

    return-void
.end method
