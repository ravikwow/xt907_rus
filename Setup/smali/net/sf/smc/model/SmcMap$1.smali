.class Lnet/sf/smc/model/SmcMap$1;
.super Ljava/lang/Object;
.source "SmcMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/smc/model/SmcMap;->getTransitions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/sf/smc/model/SmcTransition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sf/smc/model/SmcMap;


# direct methods
.method constructor <init>(Lnet/sf/smc/model/SmcMap;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lnet/sf/smc/model/SmcMap$1;->this$0:Lnet/sf/smc/model/SmcMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p1, Lnet/sf/smc/model/SmcTransition;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lnet/sf/smc/model/SmcTransition;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lnet/sf/smc/model/SmcMap$1;->compare(Lnet/sf/smc/model/SmcTransition;Lnet/sf/smc/model/SmcTransition;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/sf/smc/model/SmcTransition;Lnet/sf/smc/model/SmcTransition;)I
    .locals 1
    .param p1, "o1"    # Lnet/sf/smc/model/SmcTransition;
    .param p2, "o2"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 261
    invoke-virtual {p1, p2}, Lnet/sf/smc/model/SmcTransition;->compareTo(Lnet/sf/smc/model/SmcTransition;)I

    move-result v0

    return v0
.end method
