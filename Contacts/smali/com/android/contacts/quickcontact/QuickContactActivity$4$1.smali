.class Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$4;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$4;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;)V

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method
