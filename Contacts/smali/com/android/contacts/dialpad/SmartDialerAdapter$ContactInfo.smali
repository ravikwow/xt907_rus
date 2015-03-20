.class final Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactInfo"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public photoId:J

.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

.field public type:I


# direct methods
.method private constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V
    .locals 2

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p2, "x1"    # Lcom/android/contacts/dialpad/SmartDialerAdapter$1;

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V

    return-void
.end method
