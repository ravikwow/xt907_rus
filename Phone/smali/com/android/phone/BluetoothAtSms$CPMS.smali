.class public Lcom/android/phone/BluetoothAtSms$CPMS;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CPMS"
.end annotation


# instance fields
.field public mem1:Ljava/lang/String;

.field public mem2:Ljava/lang/String;

.field public mem3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "m1"    # Ljava/lang/String;
    .param p2, "m2"    # Ljava/lang/String;
    .param p3, "m3"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    .line 895
    iput-object p2, p0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    .line 896
    iput-object p3, p0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    .line 897
    return-void
.end method
