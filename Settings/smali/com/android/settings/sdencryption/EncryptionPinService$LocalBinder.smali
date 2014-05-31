.class public Lcom/android/settings/sdencryption/EncryptionPinService$LocalBinder;
.super Landroid/os/Binder;
.source "EncryptionPinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionPinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionPinService;


# direct methods
.method public constructor <init>(Lcom/android/settings/sdencryption/EncryptionPinService;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinService$LocalBinder;->this$0:Lcom/android/settings/sdencryption/EncryptionPinService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
