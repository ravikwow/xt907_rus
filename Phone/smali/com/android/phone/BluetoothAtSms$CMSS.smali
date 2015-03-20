.class Lcom/android/phone/BluetoothAtSms$CMSS;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CMSS"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public address_type:I

.field public index:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothAtSms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothAtSms$1;

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtSms$CMSS;-><init>()V

    return-void
.end method
